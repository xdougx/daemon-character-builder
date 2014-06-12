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

ActiveRecord::Schema.define(version: 20140608022834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: true do |t|
    t.string   "name"
    t.string   "penality"
    t.integer  "weight"
    t.integer  "index_protection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attributes", force: true do |t|
    t.string   "name"
    t.integer  "base"
    t.integer  "modifier"
    t.integer  "bonus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_improvements", force: true do |t|
    t.integer  "character_id"
    t.integer  "improvement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_injuries", force: true do |t|
    t.integer  "character_id"
    t.integer  "injury_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "character_skills", force: true do |t|
    t.integer  "skill_points"
    t.integer  "bonus"
    t.integer  "player_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.integer  "player_id"
    t.string   "name"
    t.integer  "race_id"
    t.integer  "class_id"
    t.string   "profession"
    t.integer  "gold"
    t.string   "silver"
    t.string   "cooper"
    t.integer  "experience"
    t.integer  "level"
    t.integer  "health_points"
    t.integer  "index_protection"
    t.integer  "hero_points"
    t.integer  "magic_points"
    t.integer  "focues_points"
    t.integer  "magical_aptitude"
    t.integer  "load"
    t.integer  "lifting"
    t.integer  "speed"
    t.integer  "power_bonus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "improvements", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injuries", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "magics", force: true do |t|
    t.integer  "know"
    t.integer  "make"
    t.integer  "handle"
    t.integer  "fire"
    t.integer  "water"
    t.integer  "earth"
    t.integer  "air"
    t.integer  "light"
    t.integer  "dark"
    t.integer  "plants"
    t.integer  "animals"
    t.integer  "human"
    t.integer  "dead"
    t.integer  "extra_planar"
    t.integer  "meta_magic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.string   "based_attribute"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", force: true do |t|
    t.string   "name"
    t.string   "damage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
