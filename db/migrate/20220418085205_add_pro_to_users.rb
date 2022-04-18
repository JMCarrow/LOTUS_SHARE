class AddProToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pro_name, :string
  end
end
