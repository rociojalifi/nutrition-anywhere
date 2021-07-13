require 'json'

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

    old_token = @nutritionist.zoom_token

    zoom_token = helpers.refresh_zoom_token(old_token, @nutritionist.zoom_refresh_token, @nutritionist.zoom_expiration)

    Rails.logger.info("Could not renew zoom token for user #{@nutritionist.id}") if zoom_token.nil?
    return nil if zoom_token.nil?

    @nutritionist.save_zoom_token(zoom_token) unless old_token.eql? zoom_token[:token]

    @booking = Booking.last

    meeting_info = {
      # TODO: nice meeting topic
      topic: @booking.service.speciality,
      date: @booking.booking_date,
      duration: 60,
    }

    result = helpers.create_zoom_meeting(zoom_token[:token], meeting_info)

    Rails.logger.info("Could create zoom meeting for #{@booking.id}") if result.nil?
    return nil if result.nil?

    @booking.save_meeting(result[:url], result[:metadata].to_json)

    participants_info = {
      email: current_user.email,
      name: current_user.name_or_email
    }

    success = helpers.add_participant_to_zoom_meeting(zoom_token[:token], result[:id], participants_info)

    Rails.logger.info("info :: Added patient ##{current_user.id} to Zoom meeting ##{result[:id]}. Status #{response.status}") if success
    Rails.logger.info("info :: Could not add patient ##{current_user.id} to Zoom meeting ##{result[:id]}") unless success
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
