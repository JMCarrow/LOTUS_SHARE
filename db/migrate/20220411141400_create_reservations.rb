class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.boolean :delivered
      t.boolean :returned
      t.string :address

      t.references :user, foreign_key: true, null: false
      t.references :plant, foreign_key: true, null: false
      t.timestamps
    end
  end
end
