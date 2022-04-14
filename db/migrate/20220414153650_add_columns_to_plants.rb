class AddColumnsToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :species, :string
    add_column :plants, :height, :string
    add_column :plants, :flower_color, :string
    add_column :plants, :sun_exposure, :string
    add_column :plants, :care, :string
  end
end
