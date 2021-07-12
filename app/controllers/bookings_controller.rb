class BookingsController < ApplicationController
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

    # if.zoom_token.present?
    #   @meeting_url.save
    # end

    # @booking.meeting_url = zoome_api_response.meeting.url
    # @booking.meeting_metadata = zoome_api_response

    if @booking.save
      flash[:notice] = "Congratulations your booking has been confirmed"
      redirect_to booking_path(@booking)
    else
    #   redirect_to bike_path(@service)
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
