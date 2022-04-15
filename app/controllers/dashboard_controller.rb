class DashboardController < ApplicationController
  def dashboard
    @reservations = Reservation.where(user_id:"#{current_user.id}")
    @clientreservations = Reservation.where(plant_id: current_user.plants.ids)
    @plants = Plant.where(user_id:"#{current_user.id}")
  end

  def destroy
  end
end
