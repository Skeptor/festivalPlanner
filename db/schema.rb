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

ActiveRecord::Schema[8.0].define(version: 2024_10_09_184543) do
  create_table "agenda_concerts", force: :cascade do |t|
    t.integer "agenda_id"
    t.integer "concert_id"
    t.boolean "discarded", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agenda_id"], name: "index_agenda_concerts_on_agenda_id"
    t.index ["concert_id"], name: "index_agenda_concerts_on_concert_id"
  end

  create_table "agendas", force: :cascade do |t|
    t.integer "festival_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["festival_id"], name: "index_agendas_on_festival_id"
  end

  create_table "concerts", force: :cascade do |t|
    t.integer "stage_id", null: false
    t.integer "group_id", null: false
    t.datetime "start_time", null: false
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_concerts_on_group_id"
    t.index ["stage_id"], name: "index_concerts_on_stage_id"
  end

  create_table "festivals", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.integer "festival_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["festival_id"], name: "index_stages_on_festival_id"
  end

  add_foreign_key "concerts", "groups"
  add_foreign_key "concerts", "stages"
  add_foreign_key "stages", "festivals"
end
