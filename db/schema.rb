# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_023018) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.string "api_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "character_id"
    t.string "content"
    t.integer "timestamp"
  end

  create_table "favoritequotes", force: :cascade do |t|
    t.integer "quote_id"
    t.integer "character_id"
    t.integer "user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "character_id"
    t.string "content"
    t.string "movie"
    t.string "api_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end