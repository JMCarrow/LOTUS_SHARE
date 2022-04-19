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
    authorize @reservation
    if @reservation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    authorize @reservation
    redirect_to dashboard_path
  end

  def return
    @reservation = Reservation.find(params[:id])
    @reservation.returned = true
    @reservation.save
    authorize @reservation
    redirect_to dashboard_path
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.delivered = true
    @reservation.save
    authorize @reservation
    redirect_to dashboard_path
  end

  def complete
    @reservation = Reservation.find(params[:id])
    @reservation.completed = true
    @reservation.save
    authorize @reservation
    redirect_to dashboard_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    authorize @reservation
    redirect_to dashboard_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:starts_at, :ends_at, :delivered, :address, :plant_id, :user_id, :returned)
  end
end
