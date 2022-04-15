class DashboardController < ApplicationController
  def dashboard
    @reservations = Reservation.where(user_id: current_user.id.to_s)
    @plants = Plant.where(user_id: current_user.id.to_s)
  end

  def destroy
  end
end
