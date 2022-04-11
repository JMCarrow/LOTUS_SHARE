class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :address
      # t.integer :number_of_plants_rented
      t.string :email, null: false, default: ""
      t.boolean :minority_owned, null: false, defualt: FALSE
      # t.string :encrypted_password, null: false, default: ""
      
      ## Recoverable
      # t.string   :reset_password_token
      # t.datetime :reset_password_sent_at
      
      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end
