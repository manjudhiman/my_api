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

ActiveRecord::Schema.define(version: 2020_04_11_155607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "continues", force: :cascade do |t|
    t.string "comment"
    t.bigint "retro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["retro_id"], name: "index_continues_on_retro_id"
  end

  create_table "improves", force: :cascade do |t|
    t.string "comment"
    t.bigint "retro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["retro_id"], name: "index_improves_on_retro_id"
  end

  create_table "notwells", force: :cascade do |t|
    t.string "comment"
    t.bigint "retro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["retro_id"], name: "index_notwells_on_retro_id"
  end

  create_table "retros", force: :cascade do |t|
    t.integer "retro"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wells", force: :cascade do |t|
    t.string "comment"
    t.bigint "retro_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["retro_id"], name: "index_wells_on_retro_id"
  end

  add_foreign_key "continues", "retros"
  add_foreign_key "improves", "retros"
  add_foreign_key "notwells", "retros"
  add_foreign_key "wells", "retros"
end
