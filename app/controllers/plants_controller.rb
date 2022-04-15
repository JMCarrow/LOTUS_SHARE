class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plants = policy_scope(Plant)
    @plants = Plant.geocoded
    # if params[:category]
    # @plants = Plant.where(category: params[:category])
    if params[:query].present?
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
        # image_url: helpers.asset_url(<% plant.photo.key %> )
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

  def edit
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    authorize @plant
    redirect_to dashboard_path
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    authorize @plant
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :size, :environment, :photo, :state, :available, :rent_price, :buy_price, :address, :description, :organic, :flowering, :species, :height, :flower_color, :sun_exposure, :care, :watering, :availabe_for_purchase)
  end
end
