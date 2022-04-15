class AddWateringToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :watering, :string
  end
end
