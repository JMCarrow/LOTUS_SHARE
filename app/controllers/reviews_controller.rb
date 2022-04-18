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
    @review.plant_id = @plant
    authorize @review
    if @review.save
      redirect_to dashboard_path
    else
      render :new
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
