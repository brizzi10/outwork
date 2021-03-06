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

ActiveRecord::Schema.define(version: 20160810130748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "image_url",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drills", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "image_url",   null: false
    t.string   "description", null: false
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_drills_on_category_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "drill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drill_id"], name: "index_workouts_on_drill_id", using: :btree
    t.index ["user_id"], name: "index_workouts_on_user_id", using: :btree
  end

  add_foreign_key "drills", "categories"
  add_foreign_key "workouts", "drills"
  add_foreign_key "workouts", "users"
end
