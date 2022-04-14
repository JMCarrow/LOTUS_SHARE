class AddStateToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :state
  end
end
