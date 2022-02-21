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

ActiveRecord::Schema.define(version: 2022_02_21_195553) do

  create_table "artifacts", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.string "sku"
    t.string "image_src"
    t.string "location"
    t.string "keywords"
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_artifacts_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "artifacts", "categories"
end
