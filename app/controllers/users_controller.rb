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
    if params[:professional]
      @users = User.where(professional: params[:professional])
    elsif params[:healer]
      @users = User.where(healer: params[:healer])
    end
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :bio)
  end
end
