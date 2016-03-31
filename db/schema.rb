# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160325071113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: :cascade do |t|
    t.string   "number"
    t.decimal  "rate",         precision: 8, scale: 2
    t.integer  "building_id"
    t.string   "description"
    t.integer  "unit_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["building_id", "number"], name: "index_units_on_building_id_and_number", using: :btree
  add_index "units", ["building_id", "unit_type_id"], name: "index_units_on_building_id_and_unit_type_id", using: :btree
  add_index "units", ["building_id"], name: "index_units_on_building_id", using: :btree

end
