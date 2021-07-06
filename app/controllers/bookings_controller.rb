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
    redirect_to root_path
  end

  def new
    @booking = Booking.new
  end

  def create
    @service = Service.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to bike_path(@service)
    end
  end

  # me trae todos los bookings del usuario
  def service_bookings
    @service_bookings = current_user.services.map do |service|
      service.bookings
    end
  end

  def my_bookings
    @my_bookings = current_user.services.map do |service|
      service.bookings
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
    @service = Service.find(params[:bike_id])
  end

end
