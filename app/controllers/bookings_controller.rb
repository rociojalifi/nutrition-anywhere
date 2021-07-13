require 'net/http'
require 'uri'
require 'json'
require 'faraday'
require 'faraday_middleware'

class BookingsController < ApplicationController
  after_action :create_meeting, only: :create
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_booking, only: [:show, :update, :destroy]
  before_action :set_service, only: [:new, :create]

  def index
    @booking = policy_scope(current_user.bookings)
  end

  def show
    authorize @booking
    @service = @booking.service
  end

  def update
  end


  def destroy
    authorize @booking
    @booking.destroy
    redirect_to services_path
  end

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
    @markers = [{
      lat: @service.latitude,
      lng: @service.longitude,
      info_window: render_to_string(partial: "info_window", locals: { service: @service }),
    }]
  end
  
  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.service = @service
    @booking.user = current_user

    if @booking.save
      flash[:success] = "Congratulations your booking has been confirmed"
      redirect_to booking_path(@booking)
    end
  end

  # me trae todos los bookings del usuario
  def bookings_requested
    # select * from bookings where patient_id = current_user.id
    @bookings_requested = current_user.bookings
  end

  def bookings_given
      # select * from bookings where nutritionist_id = current_user.id
      @bookings_given = []
      current_user.services.each do |service|
        service.bookings.each do |booking|
          @bookings_given << booking 
        end
      end
  end

  # Funcion para crear la llamada con el Token del Nutricionista y agregar al participante Paciente.
  def create_meeting
    @service = Service.find(params[:service_id])
    @nutritionist = User.find_by_id(@service.user_id)

    return nil unless @nutritionist.zoom_token?

    @booking = Booking.last

    zoom_api_base_url = "https://api.zoom.us/v2"
    meetings_url = "#{zoom_api_base_url}/users/me/meetings"

    params = {
      "topic": @booking.service.speciality,
      "type": 2,
      "start_time": @booking.booking_date,
      "duration": 60,
      "host_id": @booking.service.user.id,
      "settings": {
        "host_video": true,
        "participant_video": true,
        "join_before_host": false,
        "mute_upon_entry": false,
        "enforce_login": true,
        "registrants_email_notification": true
      }
    }

    client = Faraday.new do |f|
      f.request :json
      f.response :json
    end

    response = client.post(meetings_url) do |request|
      request.headers['Content-Type'] = 'application/json'
      request.headers['Authorization'] = "Bearer #{@nutritionist.zoom_token}"
      request.body = params
    end

    return nil unless response.status < 300

    @booking.meeting_url = response.body['start_url']
    @booking.meeting_metadata = response.body.to_json
    @booking.save

    meeting_id = response.body['id']

    participants_url = "#{zoom_api_base_url}/meetings/#{meeting_id}/registrants"

    participants_params = {
      "email": current_user.email,
      "first_name": current_user.name_or_email
    }

    response = client.post(participants_url) do |req|
      req.headers['Content-Type'] = 'application/json'
      req.headers['Authorization'] = "Bearer #{@nutritionist.zoom_token}"
      req.body = participants_params
    end

    Rails.logger.info("info :: Added patient ##{current_user.id} to Zoom meeting ##{meeting_id}. Status #{response.status}") unless response.status > 299
    Rails.logger.info("info :: Could not add patient ##{current_user.id} to Zoom meeting ##{meeting_id}") unless response.status < 300
  end

  private
  def booking_params
    params.require(:booking).permit(:location, :booking_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end
