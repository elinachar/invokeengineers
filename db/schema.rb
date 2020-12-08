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

ActiveRecord::Schema.define(version: 2020_12_08_151346) do

  create_table "infos", force: :cascade do |t|
    t.text "short_description"
    t.text "about_us"
    t.string "telephone_number"
    t.string "fax_number"
    t.string "email"
    t.string "address"
    t.string "town"
    t.string "country"
    t.string "contact_email"
    t.string "facebook_url"
    t.string "instagram_url"
    t.string "twitter_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postal_code"
  end

  create_table "teams", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "proffession"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.boolean "editor", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
