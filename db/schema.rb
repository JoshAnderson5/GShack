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

ActiveRecord::Schema.define(version: 20151110022240) do

  create_table "inspections", force: true do |t|
    t.string   "inspectionentityname"
    t.date     "inspectiondate"
    t.string   "inspectiondescription"
    t.text     "inspectionnotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licenses", force: true do |t|
    t.string   "company"
    t.string   "entityname"
    t.string   "licensename"
    t.string   "licensetype"
    t.string   "licenseauthority"
    t.date     "issuedate"
    t.date     "expirationdate"
    t.date     "renewalperiodstart"
    t.string   "licensefee"
    t.string   "locationaddress"
    t.string   "billingaddress"
    t.date     "openingdate"
    t.string   "approvedby"
    t.date     "approvedbydate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "licenses", ["user_id"], name: "index_licenses_on_user_id"

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "violations", force: true do |t|
    t.string   "violationentityname"
    t.date     "violationdate"
    t.string   "violationdescription"
    t.text     "violationnotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
