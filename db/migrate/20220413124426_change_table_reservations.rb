class ChangeTableReservations < ActiveRecord::Migration[6.1]
  def change
    change_table :reservations do |t|
      t.remove :address, :date
      t.string :starts_at, :ends_at
    end
  end
end
