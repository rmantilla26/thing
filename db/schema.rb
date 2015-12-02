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

ActiveRecord::Schema.define(version: 20151201200723) do

  create_table "app_things", force: :cascade do |t|
    t.integer  "app_id"
    t.integer  "thing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "app_things", ["app_id"], name: "index_app_things_on_app_id"
  add_index "app_things", ["thing_id"], name: "index_app_things_on_thing_id"

  create_table "apps", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.integer  "thing_id"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "properties", ["thing_id"], name: "index_properties_on_thing_id"
  add_index "properties", ["type_id"], name: "index_properties_on_type_id"

  create_table "relations", force: :cascade do |t|
    t.integer  "association_type"
    t.integer  "thing_id"
    t.integer  "related_to_thing_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "things", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
