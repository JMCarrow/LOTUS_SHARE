# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_11_152239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "size"
    t.string "pot_type"
    t.string "pot_color"
    t.boolean "organic"
    t.boolean "flowering"
    t.string "flower_color"
    t.boolean "direct_sunlight"
    t.string "watering_schedule"
    t.string "state"
    t.boolean "available"
    t.float "rent_price"
    t.float "buy_price"
    t.boolean "available_for_delivery"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "date"
    t.boolean "delivered"
    t.boolean "returned"
    t.string "address"
    t.bigint "user_id", null: false
    t.bigint "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_reservations_on_plant_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "business_name"
    t.string "address"
    t.string "email", default: "", null: false
    t.boolean "minority_owned", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "plants", "users"
  add_foreign_key "reservations", "plants"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "users"
end
