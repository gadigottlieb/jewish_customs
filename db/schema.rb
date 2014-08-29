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

ActiveRecord::Schema.define(version: 20140829035620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "holidays", force: true do |t|
    t.string "title"
    t.string "photo"
    t.text   "bible_quote"
    t.string "bible_src"
    t.text   "plot"
    t.text   "customs"
    t.string "date"
  end

  create_table "koshers", force: true do |t|
    t.text   "kosher_description"
    t.text   "animal_quote"
    t.string "animal_src"
    t.text   "animal_description"
    t.text   "fish_quote"
    t.string "fish_src"
    t.text   "fish_description"
    t.text   "bird_quote"
    t.string "bird_src"
    t.text   "bird_description"
    t.text   "remaining_creatures"
    t.text   "slaughter"
    t.text   "utensils"
    t.text   "milk_and_meat"
    t.text   "kosher_certifications"
    t.string "ortho_union"
    t.string "organized_kosher"
    t.string "star_k"
    t.string "kof_kosher"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
