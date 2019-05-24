# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_24_140246) do

  create_table "cart_histories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "cart_item_history_id", null: false
    t.string "family_name_history"
    t.string "first_name_history"
    t.string "family_name_kana_history"
    t.string "first_name_kana_history"
    t.string "postal_code_history"
    t.string "ship_address_history"
    t.integer "howtopay_history"
    t.integer "amount_history"
    t.string "other_name"
    t.string "other_name_kana"
    t.string "other_address"
    t.string "other_phone_number"
    t.integer "ship_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_item_histories", force: :cascade do |t|
    t.integer "cart_history_id", null: false
    t.integer "product_id", null: false
    t.integer "unit_price"
    t.integer "sub_total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "purchase_quantity", null: false
    t.integer "sub_total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category_image_id"
  end

  create_table "category_items", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "inquiry_title", null: false
    t.text "inquiry_text", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "picture_a"
    t.string "picture_b"
    t.string "picture_c"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.string "image_id"
  end

  create_table "product_reviews", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "review_title", null: false
    t.text "review_text", null: false
    t.integer "rating", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "product_name", null: false
    t.string "artist", null: false
    t.integer "stock_quantity", null: false
    t.integer "recieve_quantity"
    t.text "product_text"
    t.integer "label_id", null: false
    t.integer "product_status", null: false
    t.integer "unit_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jacket_image_id"
  end

  create_table "shopinfomations", force: :cascade do |t|
    t.text "shopinfomation_text", null: false
    t.string "shopinfomation_image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "user_delete", default: false, null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
