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

ActiveRecord::Schema.define(version: 20141106145053) do

  create_table "apprentices", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "master_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "apprentices", ["master_id"], name: "index_apprentices_on_master_id"

  create_table "masters", force: true do |t|
    t.string   "name"
    t.string   "domain"
    t.string   "city"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "apprentice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "role",            limit: 25, default: "user"
    t.string   "password_digest"
  end

  add_index "users", ["apprentice_id"], name: "index_users_on_apprentice_id"

end
