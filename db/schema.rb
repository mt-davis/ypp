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

ActiveRecord::Schema.define(version: 20160916135649) do

  create_table "alcohols", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cigarettes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_rh_values", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "rh_option_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "gender_id"
    t.date     "dob"
    t.integer  "state_id"
    t.integer  "rsource_id"
    t.integer  "cnote_id"
    t.text     "comments"
    t.integer  "employment_id"
    t.integer  "race_id"
    t.integer  "insurance_id"
    t.string   "image"
    t.integer  "ed_id"
    t.integer  "grade_id"
    t.text     "wk_id"
    t.date     "grad"
    t.text     "truma_id"
    t.string   "college_id"
    t.boolean  "enrolled",      default: false
    t.integer  "cigarette_id"
    t.integer  "alcohol_id"
  end

  create_table "clients_cparents", id: false, force: :cascade do |t|
    t.integer "cparent_id", null: false
    t.integer "client_id",  null: false
  end

  create_table "clients_discharges", id: false, force: :cascade do |t|
    t.integer "discharge_id", null: false
    t.integer "client_id",    null: false
  end

  create_table "clients_mhealths", id: false, force: :cascade do |t|
    t.integer "mhealth_id", null: false
    t.integer "client_id",  null: false
  end

  create_table "clients_pregs", id: false, force: :cascade do |t|
    t.integer "preg_id",   null: false
    t.integer "client_id", null: false
  end

  create_table "clients_refas", id: false, force: :cascade do |t|
    t.integer "refa_id",   null: false
    t.integer "client_id", null: false
  end

  create_table "clients_refbs", id: false, force: :cascade do |t|
    t.integer "refb_id",   null: false
    t.integer "client_id", null: false
  end

  create_table "clients_referrals", id: false, force: :cascade do |t|
    t.integer "referral_id", null: false
    t.integer "client_id",   null: false
  end

  create_table "clients_rhealths", id: false, force: :cascade do |t|
    t.integer "rhealth_id", null: false
    t.integer "client_id",  null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string "name"
  end

  create_table "cparents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discharge_rs", force: :cascade do |t|
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discharges", force: :cascade do |t|
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ds", force: :cascade do |t|
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eds", force: :cascade do |t|
    t.string   "school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrolleds", force: :cascade do |t|
    t.boolean "enroled", default: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grads", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mhealths", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "client_id"
  end

  create_table "pregs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refbs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referrals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rh_options", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rhealths", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rsources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "rname"
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trumas", force: :cascade do |t|
    t.text "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wks", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
