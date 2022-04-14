class AddCareToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :care
  end
end
