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

ActiveRecord::Schema.define(version: 2019_04_30_183334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "front"
    t.string "back"
    t.bigint "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "size"
    t.index ["style_id"], name: "index_colors_on_style_id"
  end

  create_table "manufactures", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "full_name"
    t.string "org_name"
    t.string "add_one"
    t.string "add_two"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "quote_number"
    t.string "front"
    t.string "back"
    t.string "color"
    t.text "sizes"
    t.text "notes"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.string "front"
    t.string "back"
    t.string "size"
    t.bigint "manufacture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacture_id"], name: "index_styles_on_manufacture_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "colors", "styles"
  add_foreign_key "quotes", "users"
  add_foreign_key "styles", "manufactures"
end
