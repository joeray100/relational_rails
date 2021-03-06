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

ActiveRecord::Schema.define(version: 2021_03_24_180121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bakeries", force: :cascade do |t|
    t.boolean "open"
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.boolean "big_company"
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "hours_worked"
    t.boolean "likes_job"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_employees_on_business_id"
  end

  create_table "pastries", force: :cascade do |t|
    t.boolean "gluten_free"
    t.integer "price"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bakery_id"
    t.index ["bakery_id"], name: "index_pastries_on_bakery_id"
  end

  add_foreign_key "employees", "businesses"
  add_foreign_key "pastries", "bakeries"
end
