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

ActiveRecord::Schema.define(version: 2023_01_13_002555) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "listings", force: :cascade do |t|
    t.string "subdivision"
    t.integer "list_price"
    t.integer "year_built"
    t.boolean "for_sale"
    t.boolean "sold"
    t.integer "storey"
    t.integer "bedroom"
    t.integer "bathroom"
    t.integer "garage"
    t.integer "building_size"
    t.integer "lot_size"
    t.string "architecture_style"
    t.boolean "pool"
    t.integer "listing_id"
    t.string "image_url"
    t.integer "account_id"
    t.integer "subdivision_id"
  end

  create_table "subdivisions", force: :cascade do |t|
    t.string "name"
    t.string "community_type"
  end

end
