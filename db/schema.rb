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

ActiveRecord::Schema.define(version: 20161231170901) do

  create_table "idds", force: :cascade do |t|
    t.string   "integration_id"
    t.string   "integration_name"
    t.string   "integration_type"
    t.string   "originating_system"
    t.string   "destination_system"
    t.integer  "project_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.datetime "out_of_scope_datetime"
    t.text     "out_of_scope_reason"
    t.index ["project_id"], name: "index_idds_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "Professional_Services_Org"
    t.string   "Customer_Name"
    t.string   "Sow_Name"
    t.integer  "Sow_Hours"
    t.date     "Start_Date"
    t.date     "Go_Live"
    t.text     "Project_Description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
