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

ActiveRecord::Schema.define(version: 20141030105755) do

  create_table "drives", force: true do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "start_time"
    t.integer  "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.date     "date"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays", force: true do |t|
    t.integer  "number"
    t.integer  "down"
    t.integer  "distance"
    t.string   "hashmark"
    t.integer  "los"
    t.string   "formation"
    t.string   "playcall"
    t.integer  "rusher"
    t.integer  "passer"
    t.integer  "receiver"
    t.string   "result"
    t.integer  "deltayards"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "drive_id"
    t.string   "play_type"
    t.string   "direction"
    t.boolean  "complete"
    t.boolean  "penalty"
    t.string   "penalty_call"
    t.string   "penalty_against"
    t.integer  "offender"
    t.integer  "penalty_yards"
    t.boolean  "first_down"
    t.boolean  "fumble_lost"
    t.boolean  "interception"
    t.boolean  "touchdown"
    t.boolean  "sack"
    t.boolean  "failed_conversion"
    t.boolean  "fg_good"
    t.integer  "kick_distance"
  end

  create_table "team_games", force: true do |t|
    t.integer  "team_id"
    t.integer  "game_id"
    t.boolean  "home_team"
    t.boolean  "away_team"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_memberships", force: true do |t|
    t.integer  "team_id"
    t.integer  "person_id"
    t.integer  "jersey_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
