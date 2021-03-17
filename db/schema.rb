# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_17_232953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cattles", force: :cascade do |t|
    t.string "cattle_name"
    t.string "politician"
    t.integer "cattle_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pass_cloths", force: :cascade do |t|
    t.bigint "cattle_id", null: false
    t.bigint "phrase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cattle_id"], name: "index_pass_cloths_on_cattle_id"
    t.index ["phrase_id"], name: "index_pass_cloths_on_phrase_id"
  end

  create_table "phrases", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pass_cloths", "cattles"
  add_foreign_key "pass_cloths", "phrases"
end
