class AddMinorityToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :minority_owned, :boolean, default: false
  end
end
