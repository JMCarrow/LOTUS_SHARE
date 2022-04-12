class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.boolean :delivered
      t.boolean :returned
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
