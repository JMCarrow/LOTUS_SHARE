class AddSunExposureToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :sun_exposure
  end
end
