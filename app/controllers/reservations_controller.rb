class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @plant = Plant.find(params[:plant_id])
    @reservation.plant = @plant
    #authorize @reservation
    if @reservation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end
end
