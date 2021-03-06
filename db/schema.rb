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

ActiveRecord::Schema.define(version: 2020_07_04_223610) do

  create_table "animals", force: :cascade do |t|
    t.string "species"
    t.string "lifespan"
    t.string "size"
    t.string "prey"
    t.string "predators"
    t.string "location"
    t.string "other_info"
    t.boolean "endangered"
    t.integer "biome_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "biomes", force: :cascade do |t|
    t.string "biome_name"
    t.string "temp_range"
    t.string "ecosystems"
    t.string "biodiversity"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "choices", force: :cascade do |t|
    t.string "item"
    t.boolean "answer"
    t.integer "question_answer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "comment"
    t.string "animal_img"
    t.integer "animal_id"
    t.integer "plant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "species"
    t.string "size"
    t.string "predators"
    t.string "location"
    t.string "seed_distribution"
    t.string "other_info"
    t.integer "biome_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_answers", force: :cascade do |t|
    t.string "question"
    t.string "fact"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
