class AddDeclinedToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :declined, :boolean, default: false
  end
end
