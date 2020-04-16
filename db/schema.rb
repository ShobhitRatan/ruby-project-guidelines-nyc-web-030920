# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_16_141758) do

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.string "plan"
    t.string "country"
  end

  create_table "current_seasons", force: :cascade do |t|
    t.integer "competition_id"
    t.integer "season_id"
    t.integer "team_id"
    t.integer "match_id"
  end

  create_table "lineups", force: :cascade do |t|
    t.integer "team_id"
    t.integer "player_id"
  end

  create_table "match_days", force: :cascade do |t|
    t.integer "match_id"
    t.integer "current_season_id"
    t.datetime "utc_date"
    t.string "status"
    t.integer "attendance"
    t.string "venue"
    t.integer "home_lineup_id"
    t.integer "away_lineup_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "stage"
    t.string "group"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "goals"
    t.integer "caps"
    t.datetime "date_of_birth"
    t.string "club"
  end

  create_table "seasons", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "active_season?"
    t.string "name"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.datetime "last_updated"
    t.string "venue"
  end

  create_table "user_competitions", force: :cascade do |t|
    t.string "user_id"
    t.string "competition_id"
  end

  create_table "user_current_seasons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "current_season_id"
  end

  create_table "user_teams", force: :cascade do |t|
    t.string "user_id"
    t.string "team_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
