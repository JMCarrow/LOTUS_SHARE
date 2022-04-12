class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plants = policy_scope(Plant)
    @plants = Plant.all
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

  private

  def plant_params
    params.require(:plant).permit(:name, :size, :environment)
  end
end
