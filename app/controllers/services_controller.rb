class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = policy_scope(Service)
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: service }),
        image_url: helpers.asset_url(service.user.photo)
      }
    end
    if current_user.nutritionist?
      @services = current_user.services
    else
      @services = Service.all
    end
  end

  def show
    authorize @service
    @booking = Booking.new
    @review = Review.new 
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize @service
    if @service.save
      redirect_to services_path
    else
      render :new
    end
  end

  def edit 
  end

  def update 
    if @service.update(service_params)
    redirect_to services_path
    else
      render :edit
    end
  end

  def destroy
    if @service.destroy
    redirect_to services_path(@service)
    else
      render :index
    end
  end

  private
  def service_params
    params.require(:service).permit(:speciality, :price)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
