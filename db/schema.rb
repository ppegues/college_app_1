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

ActiveRecord::Schema.define(version: 20141209225840) do

  create_table "favorites", force: true do |t|
    t.integer  "profile_id"
    t.integer  "school_id"
    t.string   "acceptance_difficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "image"
    t.string   "high_school"
    t.text     "Extras"
    t.string   "school_size"
    t.string   "region"
    t.string   "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",                              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "ACT"
    t.integer  "SAT"
    t.decimal  "GPA",                    precision: 30, scale: 2
  end

  add_index "profiles", ["email"], name: "index_profiles_on_email", unique: true
  add_index "profiles", ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.string   "region"
    t.string   "tuition"
    t.string   "acceptance_rate"
    t.string   "SAT"
    t.string   "ACT"
    t.string   "GPA"
    t.string   "Percent_with_Financial_Aid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank_forbes"
    t.integer  "size"
    t.integer  "avg_SAT"
    t.integer  "avg_ACT"
    t.integer  "lower_SAT"
    t.integer  "upper_SAT"
    t.integer  "lower_ACT"
    t.integer  "upper_ACT"
    t.decimal  "avg_GPA",                    precision: 30, scale: 2
  end

end
