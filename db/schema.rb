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

ActiveRecord::Schema.define(version: 20170307060030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "purchase_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["purchase_id"], name: "index_buyers_on_purchase_id", using: :btree
    t.index ["user_id"], name: "index_buyers_on_user_id", using: :btree
  end

  create_table "item_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "store_id"
    t.integer  "item_type_id"
    t.decimal  "price"
    t.string   "brand"
    t.string   "description"
    t.integer  "replaced_by"
    t.integer  "replaced"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["item_type_id"], name: "index_items_on_item_type_id", using: :btree
    t.index ["store_id"], name: "index_items_on_store_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "purchase_date"
    t.boolean  "deleted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["item_id"], name: "index_purchases_on_item_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "user_id", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.integer  "replaced_by"
    t.integer  "replaced"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "description",     limit: 1000
    t.string   "avatar",          limit: 1000
    t.string   "email",           limit: 75
    t.string   "username",                     null: false
    t.string   "password_digest", limit: 400
    t.boolean  "deleted"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_foreign_key "buyers", "purchases"
  add_foreign_key "buyers", "users"
  add_foreign_key "purchases", "items"
end
