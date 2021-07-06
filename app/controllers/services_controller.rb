class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: service }),
        image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
    # if user.role == "Nutritionist"
    #   @services = Service.all.current_user
    # else
    #   @services = Service.all
    # end
  end

  def show
    @booking = Booking.new
    @service = Service.find(params[:id])
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
    authorize @service
  end
end
