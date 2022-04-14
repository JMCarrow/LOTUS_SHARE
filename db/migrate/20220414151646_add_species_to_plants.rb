class AddSpeciesToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :species
  end
end
