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

ActiveRecord::Schema.define(version: 2019_08_08_182615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "poem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poem_id"], name: "index_favorites_on_poem_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "poem_tags", force: :cascade do |t|
    t.bigint "poem_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poem_id"], name: "index_poem_tags_on_poem_id"
    t.index ["tag_id"], name: "index_poem_tags_on_tag_id"
  end

  create_table "poems", force: :cascade do |t|
    t.string "text", default: [], array: true
    t.string "author"
    t.string "title"
    t.string "year"
    t.string "region"
    t.string "reference"
    t.string "period"
    t.string "classification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_poems", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "text"
    t.string "classification"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_poems_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorites", "poems"
  add_foreign_key "favorites", "users"
  add_foreign_key "poem_tags", "poems"
  add_foreign_key "poem_tags", "tags"
  add_foreign_key "user_poems", "users"
end
