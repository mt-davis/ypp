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

ActiveRecord::Schema.define(version: 20161007133550) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

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

  create_table "clients", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "clientemail"
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
    t.text     "truma_id"
    t.string   "college_id"
    t.boolean  "enrolled",      default: false
    t.integer  "cigarette_id"
    t.integer  "alcohol_id"
    t.integer  "mj_id"
    t.integer  "od_id"
    t.integer  "otc_id"
    t.boolean  "ged_id",        default: false
    t.boolean  "msub",          default: false
    t.date     "grad"
    t.text     "text_id"
    t.text     "text_rs"
    t.text     "RefbText"
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

  create_table "clients_rhealths", id: false, force: :cascade do |t|
    t.integer "rhealth_id", null: false
    t.integer "client_id",  null: false
  end

  create_table "cnotes", force: :cascade do |t|
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "client_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.string "name"
  end

  create_table "cparents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discharges", force: :cascade do |t|
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eds", force: :cascade do |t|
    t.string   "name"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "school"
  end

  create_table "employments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrolleds", force: :cascade do |t|
    t.boolean "enroled", default: false
  end

  create_table "geds", force: :cascade do |t|
    t.boolean "ged", default: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grads", force: :cascade do |t|
    t.date "grad"
  end

  create_table "insurances", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "text"
  end

  create_table "mhealths", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mjs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "msubs", force: :cascade do |t|
    t.boolean "msub", default: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "client_id"
  end

  create_table "ods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otcs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregs", force: :cascade do |t|
    t.string   "name"
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
    t.text     "RefbText"
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
    t.text     "text"
    t.text     "text_rs"
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
