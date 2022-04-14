class AddProfessionalToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :professional, :boolean, default: false
  end
end
