class AddCompletedToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :completed, :boolean, default: false
  end
end
