class AddAvailablepurchaseToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :availabe_for_purchase, :boolean
  end
end
