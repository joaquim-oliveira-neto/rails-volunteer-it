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

ActiveRecord::Schema.define(version: 20170807200604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "volunteer_id"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_matches_on_project_id", using: :btree
    t.index ["volunteer_id"], name: "index_matches_on_volunteer_id", using: :btree
  end

  create_table "ngos", force: :cascade do |t|
    t.string   "name"
    t.string   "responsible"
    t.text     "mini_description"
    t.text     "full_description"
    t.string   "phone"
    t.string   "address"
    t.string   "purpose"
    t.string   "website"
    t.string   "facebook"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "mini_description"
    t.string   "purpose"
    t.string   "skills"
    t.boolean  "remote"
    t.integer  "ong_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "matches", "projects"
  add_foreign_key "matches", "volunteers"
end
