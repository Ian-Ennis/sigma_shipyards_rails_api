# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_02_182133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "engine_parts", force: :cascade do |t|
    t.string "part_name"
    t.integer "range"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hull_parts", force: :cascade do |t|
    t.string "part_name"
    t.integer "hull_strength"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spaceships", force: :cascade do |t|
    t.string "spaceship_name"
    t.integer "credits"
    t.integer "range"
    t.integer "strength"
    t.integer "nuclearCount"
    t.integer "fusionCount"
    t.integer "antimatterCount"
    t.integer "carbonCount"
    t.integer "grapheneCount"
    t.integer "neutronCount"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_spaceships_on_user_id"
  end

  create_table "star_systems", force: :cascade do |t|
    t.string "name"
    t.integer "distance"
    t.string "mission_complexity"
    t.integer "habitibility_chance"
    t.integer "shields_required"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
