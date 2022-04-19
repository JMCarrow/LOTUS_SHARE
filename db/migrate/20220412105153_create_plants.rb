class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :size
      t.string :environment
      t.string :state
      t.boolean :available
      t.integer :rent_price
      t.integer :buy_price
      t.string :address
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
