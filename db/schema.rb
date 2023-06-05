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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_022539) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "material_number"
    t.integer "stock"
    t.bigint "sup_sub_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sup_sub_category_id"], name: "index_products_on_sup_sub_category_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "sup_sub_categories", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "sub_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_category_id"], name: "index_sup_sub_categories_on_sub_category_id"
  end

  add_foreign_key "products", "sup_sub_categories"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "sup_sub_categories", "sub_categories"
end
