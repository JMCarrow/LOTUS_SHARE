class AddFloweringToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :flowering, :boolean
  end
end
