class AddOrganicToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :organic, :boolean
  end
end
