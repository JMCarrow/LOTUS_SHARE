class DashboardController < ApplicationController
  def dashboard
    @reservations = Reservation.where(user_id:"#{current_user.id}")
    @plants = Plant.where(user_id:"#{current_user.id}")
  end

  def destroy
  end
end
