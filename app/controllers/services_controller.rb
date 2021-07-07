class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @users = policy_scope(User)
    @services = policy_scope(Service)
    @search = params["search"]
    if @search.present?
      @nationality = @search["nationality"]
      @language = @search["language"]
      @speciality = @search["speciality"]
      @price = @search["price"]
      
      if !@nationality.empty? && !@language.empty?
        @users = User.where(nationality: @nationality, language: @language)
      elsif !@nationality.empty?
        @users = User.where(nationality: @nationality)
      elsif !@language.empty?
        @users = User.where(language: @language)
      else
        @users = User.all
      end

      @services = []

      @users.each do |user|
        if !@speciality.empty? && !@price.empty?
          user.services.where(speciality: @speciality, price: @price).each do |service|
            @services << service
          end
        elsif !@speciality.empty?
          user.services.where(speciality: @speciality).each do |service|
            @services << service
          end
        elsif !@price.empty?
          user.services.where(price: @price).each do |service|
            @services << service
          end
        else
          user.services.each do |service|
            @services << service
          end
        end
      end
    else
      @services = policy_scope(Service)
      @markers = @services.geocoded.map do |service|
        {
          lat: service.latitude,
          lng: service.longitude,
          info_window: render_to_string(partial: "info_window", locals: { service: service }),
          # image_url: helpers.asset_url(service.user.photo)
        }
      end
    end

    # if current_user.nutritionist?
    #   @services = current_user.services
    # else
    #   @services = Service.all
    # end
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
    current_user.update(user_params)
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
    params.require(:service).permit(:price, :speciality)
  end

  # def user_params
  #   params[:service].require(:users).permit(:full_name, :photo, :role)
  # end

  def set_service
    @service = Service.find(params[:id])
  end
end
