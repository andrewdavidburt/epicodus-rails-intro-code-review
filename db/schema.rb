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

ActiveRecord::Schema.define(version: 20150702212249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string  "name"
    t.string  "short_description"
    t.string  "long_description"
    t.string  "category"
    t.string  "coworkers"
    t.string  "code_url"
    t.string  "hosted_url"
    t.date    "project_date"
    t.integer "skill_id"
    t.integer "user_id"
  end

  create_table "projects_skills", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "skill_id"
  end

  add_index "projects_skills", ["project_id"], name: "index_projects_skills_on_project_id", using: :btree
  add_index "projects_skills", ["skill_id"], name: "index_projects_skills_on_skill_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.string  "category"
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "short_description"
    t.string  "long_description"
    t.string  "title"
    t.string  "app_role"
    t.string  "phone"
    t.string  "email"
    t.string  "code_url"
    t.string  "hosted_url"
    t.integer "skill_id"
    t.integer "project_id"
  end

end
