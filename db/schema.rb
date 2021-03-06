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

ActiveRecord::Schema.define(version: 2021_02_05_185158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "synths", force: :cascade do |t|
    t.string "osc_type_1"
    t.string "osc_type_2"
    t.float "osc_freq_1"
    t.float "osc_freq_2"
    t.string "distortion_curve"
    t.integer "distortion_gain"
    t.float "delay_length"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "osc_gain"
    t.string "name"
    t.boolean "distortion_toggle"
    t.index ["user_id"], name: "index_synths_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "synths", "users"
end
