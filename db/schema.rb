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

ActiveRecord::Schema.define(version: 20161216095734) do

  create_table "groups", force: :cascade do |t|
    t.integer  "institute_id"
    t.string   "number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["institute_id"], name: "index_groups_on_institute_id"
  end

  create_table "institutes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "position"
    t.integer  "lesson_id"
    t.integer  "teacher_id"
    t.integer  "week_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["group_id"], name: "index_items_on_group_id"
    t.index ["lesson_id"], name: "index_items_on_lesson_id"
    t.index ["teacher_id"], name: "index_items_on_teacher_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.integer  "institute_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["institute_id"], name: "index_lessons_on_institute_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
