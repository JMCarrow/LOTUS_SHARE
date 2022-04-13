class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plants = policy_scope(Plant)
    @plants = Plant.all
    @reservation = Reservation.new
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    authorize @plant
    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  def show
    @plant = Plant.find(params[:id])
    @reservation = Reservation.new
    authorize @plant
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    authorize @plant
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :size, :environment, :photo)
  end
end
