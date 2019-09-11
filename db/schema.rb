# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_09_191710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.decimal "longitude"
    t.decimal "latitude"
    t.string "description"
    t.string "link"
  end

  create_table "activity_reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "activity_id", null: false
    t.index ["activity_id"], name: "index_activity_reviews_on_activity_id"
  end

  create_table "plan_activities", force: :cascade do |t|
    t.bigint "plan_id"
    t.bigint "activity_id"
    t.index ["activity_id"], name: "index_plan_activities_on_activity_id"
    t.index ["plan_id"], name: "index_plan_activities_on_plan_id"
  end

  create_table "plan_reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "plan_id", null: false
    t.index ["plan_id"], name: "index_plan_reviews_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "allergies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "activity_reviews", "activities"
  add_foreign_key "plan_activities", "activities"
  add_foreign_key "plan_activities", "plans"
  add_foreign_key "plan_reviews", "plans"
  add_foreign_key "plans", "users"
end
