class AddHealerToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :healer, :boolean, default: false
  end
end
