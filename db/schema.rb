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

ActiveRecord::Schema[7.0].define(version: 2023_05_02_034649) do
  create_table "bids", force: :cascade do |t|
    t.float "bid_amount", default: 0.0
    t.datetime "bid_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "buyer_id"
    t.index ["buyer_id"], name: "index_bids_on_buyer_id"
    t.index ["product_id"], name: "index_bids_on_product_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.string "category_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "starting_price"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "successful_bid_id"
    t.integer "seller_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type"
  end

  add_foreign_key "bids", "buyers"
  add_foreign_key "bids", "products", on_delete: :cascade
  add_foreign_key "products", "categories"
  add_foreign_key "products", "sellers"
end
