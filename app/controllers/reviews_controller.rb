class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @plant = Plant.find(params[:plant_id])
    @review.plant = @plant
    authorize @review
    if @review.save!
      reservation = Reservation.find(params[:reservation])
      reservation.update(reviewed: true)
      redirect_to dashboard_path
    end
  end

  def edit
    @review = Review.find(params[:id])
    authorize @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    authorize @review
    redirect_to dashboard_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    authorize @review
    redirect_to dashboard_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
