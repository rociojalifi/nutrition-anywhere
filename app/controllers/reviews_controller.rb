class ReviewsController < ApplicationController
  def create
    @service = Service.find(params[:service])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.service = @service
    authorize @review
    if @review.save
      redirect_to service_path(@service, anchor: "review-#{@review.id}")
    else
      @booking = Booking.new
      redirect_to bookings_requested_path
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    authorize @review
    redirect_to service_path(@review.service.id)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
