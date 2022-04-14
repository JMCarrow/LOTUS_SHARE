class AddFlowercolorToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :flower_color
  end
end
