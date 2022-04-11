class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :size
      t.string :pot_type
      t.string :pot_color
      t.boolean :organic
      t.boolean :flowering
      t.string :flower_color
      t.boolean :direct_sunlight
      t.string :watering_schedule
      t.string :state
      t.boolean :available
      t.float :rent_price
      t.float :buy_price
      t.boolean :available_for_delivery

      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
