class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
    authorize @user
    array = []
    @reviews.each do |review|
      array << review.rating
    end
    @array = array.sum
  end

  def index
    @users = policy_scope(User)
  end
end
