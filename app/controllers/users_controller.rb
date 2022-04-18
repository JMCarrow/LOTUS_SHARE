class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def index
    @users = policy_scope(User)
  end
end
