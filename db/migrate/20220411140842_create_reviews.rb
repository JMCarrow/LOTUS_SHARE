class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :content

      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
