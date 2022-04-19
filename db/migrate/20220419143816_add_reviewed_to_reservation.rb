class AddReviewedToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :reviewed, :boolean, default: false
  end
end
