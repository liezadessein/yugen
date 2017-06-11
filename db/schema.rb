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

ActiveRecord::Schema.define(version: 20170611121836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creative_escapes", force: :cascade do |t|
    t.string   "skill"
    t.text     "description"
    t.integer  "price"
    t.string   "currency"
    t.integer  "streetnumber"
    t.string   "address"
    t.string   "postcode"
    t.string   "city"
    t.string   "email"
    t.integer  "phone"
    t.boolean  "bookable"
    t.string   "country"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "length"
    t.string   "longitude"
    t.string   "latitude"
  end

  create_table "escape_photos", force: :cascade do |t|
    t.string   "photo"
    t.integer  "creative_escape_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["creative_escape_id"], name: "index_escape_photos_on_creative_escape_id", using: :btree
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "escape_photos", "creative_escapes"
end
