class ChangeColumnsDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :available, :boolean, default: true
    change_column :reservations, :delivered, :boolean, default: false
    change_column :reservations, :returned, :boolean, default: false
  end
end
