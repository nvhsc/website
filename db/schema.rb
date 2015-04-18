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

ActiveRecord::Schema.define(version: 20150415042859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "divisions", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "sport_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "type"
    t.text     "description"
    t.datetime "start_at",      null: false
    t.datetime "end_at",        null: false
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tournament_id"
  end

  add_index "events", ["tournament_id"], name: "index_events_on_tournament_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "first_name",          null: false
    t.string   "middle_name"
    t.string   "last_name",           null: false
    t.string   "gender"
    t.date     "birthdate"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.integer  "player_id",  null: false
    t.string   "role",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "name",       null: false
    t.date     "start_at",   null: false
    t.date     "end_at",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sport_id"
  end

  add_index "seasons", ["sport_id"], name: "index_seasons_on_sport_id", using: :btree

  create_table "sports", force: :cascade do |t|
    t.string   "name",              null: false
    t.text     "description",       null: false
    t.string   "icon_file_name",    null: false
    t.string   "icon_content_type", null: false
    t.integer  "icon_file_size",    null: false
    t.datetime "icon_updated_at",   null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.string   "type"
    t.time     "game_time"
    t.time     "penalty_duration"
    t.string   "penalty_name"
    t.boolean  "pickup",           default: false
    t.integer  "game_id",                          null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",              null: false
    t.string   "icon_file_name",    null: false
    t.string   "icon_content_type", null: false
    t.integer  "icon_file_size",    null: false
    t.datetime "icon_updated_at",   null: false
    t.integer  "division_id",       null: false
    t.integer  "season_id",         null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
