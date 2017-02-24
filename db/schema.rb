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

ActiveRecord::Schema.define(version: 20170224232854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_properties", force: :cascade do |t|
    t.string   "item_id"
    t.string   "property_id"
    t.string   "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["item_id", "property_id"], name: "index_item_properties_on_item_id_and_property_id", unique: true, using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",       null: false
    t.decimal  "price",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.string   "order_id",   null: false
    t.string   "item_id",    null: false
    t.string   "quantity",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id", "item_id"], name: "index_order_items_on_order_id_and_item_id", unique: true, using: :btree
  end

  create_table "orders", id: :string, force: :cascade do |t|
    t.string   "customer_name", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "desc",                      null: false
    t.boolean  "nameable",   default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
