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

ActiveRecord::Schema.define(version: 20141125025102) do

  create_table "favorites", force: true do |t|
    t.integer  "profile_id"
    t.integer  "school_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "username"
    t.string   "image"
    t.string   "high_school"
    t.integer  "GPA"
    t.integer  "SAT"
    t.integer  "ACT"
    t.text     "extras"
    t.string   "size"
    t.integer  "region_id"
    t.string   "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.string   "location"
    t.integer  "region_id"
    t.string   "region_name"
    t.integer  "size"
    t.integer  "tuition"
    t.integer  "SAT"
    t.integer  "ACT"
    t.integer  "GPA"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
