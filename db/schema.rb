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

ActiveRecord::Schema.define(version: 2020_04_06_145417) do

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50
    t.bigint "country_id"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50, null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "color", default: "-1", null: false
    t.string "size", default: "-1", null: false
    t.decimal "price", precision: 8, scale: 2, default: "0.0", null: false
    t.integer "stock", default: 0, null: false
  end

  create_table "store_products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "store_id"
    t.bigint "product_id"
    t.integer "stock", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_store_products_on_product_id"
    t.index ["store_id"], name: "index_store_products_on_store_id"
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "street", limit: 50, null: false
    t.string "number", limit: 6, null: false
    t.string "zipcode", limit: 6
    t.bigint "city_id"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_stores_on_city_id"
    t.index ["country_id"], name: "index_stores_on_country_id"
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "store_products", "products"
  add_foreign_key "store_products", "stores"
  add_foreign_key "stores", "cities"
  add_foreign_key "stores", "countries"
end
