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

ActiveRecord::Schema.define(version: 20160203042155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apps", force: true do |t|
    t.text     "time"
    t.text     "ip"
    t.text     "founder_name"
    t.text     "founder_email"
    t.text     "founder_phone"
    t.text     "num_founders"
    t.text     "full_time"
    t.text     "hours"
    t.text     "team_descrip"
    t.text     "linkedin"
    t.text     "uni_connection"
    t.text     "other_connection"
    t.text     "academ_dept"
    t.text     "other_academ_dept"
    t.text     "company_name"
    t.text     "company_url"
    t.text     "company_descrip"
    t.text     "company_history"
    t.text     "company_progress"
    t.text     "company_market"
    t.text     "company_monetization"
    t.text     "company_funding"
    t.text     "company_targets"
    t.text     "company_competitors"
    t.text     "company_ext_fund"
    t.text     "how_hear"
    t.text     "anything_else"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apps_members", id: false, force: true do |t|
    t.integer "app_id"
    t.integer "member_id"
  end

  add_index "apps_members", ["app_id"], name: "index_apps_members_on_app_id", using: :btree
  add_index "apps_members", ["member_id"], name: "index_apps_members_on_member_id", using: :btree

  create_table "members", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
