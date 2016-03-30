# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160324132708) do

  create_table "account_types", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "categories", force: :cascade do |t|
    t.string   "title",       null: false
    t.integer  "universe_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories", ["universe_id"], name: "index_categories_on_universe_id"

  create_table "contents", force: :cascade do |t|
    t.string   "code",       null: false
    t.text     "content",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contents", ["code"], name: "index_contents_on_code", unique: true

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "value",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "row_order"
  end

  add_index "parameters", ["code"], name: "index_parameters_on_code", unique: true

  create_table "product_orders", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_orders", ["order_id"], name: "index_product_orders_on_order_id"
  add_index "product_orders", ["product_id"], name: "index_product_orders_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "reference",       null: false
    t.string   "title",           null: false
    t.text     "description",     null: false
    t.float    "prix_ht1"
    t.float    "prix_ttc1"
    t.float    "prix_ht2"
    t.float    "prix_ttc2"
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.integer  "sell_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
    t.string   "pdf"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["sell_type_id"], name: "index_products_on_sell_type_id"
  add_index "products", ["sub_category_id"], name: "index_products_on_sub_category_id"

  create_table "sell_types", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "title",       null: false
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id"

  create_table "universes", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "color",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "icon"
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "adress"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
