class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plants = policy_scope(Plant)
    @plants = Plant.geocoded
    if params[:size]
      @plants = Plant.where(size: params[:size])
    elsif params[:environment]
      @plants = Plant.where(environment: params[:environment])
    elsif params[:flower_color]
      @plants = Plant.where(flower_color: params[:flower_color])
    elsif params[:query].present?
      sql_query = " \
        plants.name ILIKE :query \
        OR plants.size ILIKE :query \
        OR plants.description ILIKE :query \
        OR plants.species ILIKE :query \
        OR plants.address ILIKE :query \
      "
      @plants = Plant.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { plant: plant })
      }
    end
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def show
    @plant = Plant.find(params[:id])
    @reservation = Reservation.new
    authorize @plant
    @plants = Plant.all
    @plantall = @plants[0..8]
    @carousel1 = @plantall[0..2]
    @carousel2 = @plantall[3..5]
    @carousel3 = @plantall[6..8]
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    authorize @plant
    if @plant.save
      redirect_to user_path(@plant.user)
    else
      render :new
    end
  end

  def edit
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    authorize @plant
    redirect_to user_path(@plant.user)
  end

  def available
    @plant = Plant.find(params[:id])
    @plant.available = false
    authorize @plant
    redirect_to dashboard_path
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    authorize @plant
    redirect_to user_path(@plant.user)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :size, :environment, :photo, :state, :available, :rent_price, :buy_price, :address, :description, :organic, :flowering, :species, :height, :flower_color, :sun_exposure, :care, :watering, :availabe_for_purchase)
  end
end
