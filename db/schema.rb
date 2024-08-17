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

ActiveRecord::Schema[7.2].define(version: 2024_08_17_193819) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basentas", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "contact_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_converts", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.date "date_of_birth"
    t.string "contact_number_1"
    t.string "contact_number_2"
    t.string "house_number"
    t.string "landmark"
    t.string "area"
    t.string "city"
    t.string "other_contact_name"
    t.string "other_contact_number"
    t.string "other_contact_relationship"
    t.string "inviter_name"
    t.string "inviter_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "basenta_id"
    t.string "first_name"
    t.string "last_name"
    t.index ["basenta_id"], name: "index_new_converts_on_basenta_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "new_converts", "basentas"
end
