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

ActiveRecord::Schema.define(version: 20150916153955) do

  create_table "locations", force: :cascade do |t|
    t.string   "location"
    t.float    "lng"
    t.float    "lat"
    t.integer  "zoom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replyreplies", force: :cascade do |t|
    t.integer  "userreply_id"
    t.string   "userreply_name"
    t.string   "userreply_password"
    t.text     "userreply_content"
    t.string   "userreply_img"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "location_id"
    t.string   "sports"
    t.string   "date"
    t.string   "time"
    t.string   "rec_num"
    t.string   "tot_num"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "userreplies", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "reply_id"
    t.string   "reply_name"
    t.string   "reply_img"
    t.string   "reply_password"
    t.string   "id_img"
    t.text     "reply_content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "nickname",               default: "", null: false
    t.string   "oneline",                default: "", null: false
    t.text     "profile",                default: "", null: false
    t.string   "sex",                    default: "", null: false
    t.string   "img",                    default: "", null: false
    t.string   "birth_year",             default: "", null: false
    t.string   "birth_month",            default: "", null: false
    t.string   "birth_day",              default: "", null: false
    t.string   "badminton",              default: "", null: false
    t.string   "running",                default: "", null: false
    t.string   "cycle",                  default: "", null: false
    t.string   "bowling",                default: "", null: false
    t.string   "pingpong",               default: "", null: false
    t.string   "soccer",                 default: "", null: false
    t.string   "jokgu",                  default: "", null: false
    t.string   "tennis",                 default: "", null: false
    t.string   "pocket",                 default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
