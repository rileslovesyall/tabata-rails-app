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

ActiveRecord::Schema.define(version: 20151124204715) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "body_focus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "exercises_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "exercise_id", null: false
  end

  add_index "exercises_users", ["user_id", "exercise_id"], name: "index_exercises_users_on_user_id_and_exercise_id"

  create_table "exercises_workouts", id: false, force: :cascade do |t|
    t.integer "exercise_id", null: false
    t.integer "workout_id",  null: false
  end

  add_index "exercises_workouts", ["exercise_id", "workout_id"], name: "index_exercises_workouts_on_exercise_id_and_workout_id"
  add_index "exercises_workouts", ["workout_id", "exercise_id"], name: "index_exercises_workouts_on_workout_id_and_exercise_id"

  create_table "favorite_exercises", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

end
