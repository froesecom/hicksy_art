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

ActiveRecord::Schema.define(version: 20180108032842) do

  create_table "painting_categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.text "overview"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "painting_painting_categories", force: :cascade do |t|
    t.integer "painting_id", null: false
    t.integer "painting_category_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["painting_category_id"], name: "index_painting_painting_categories_on_painting_category_id"
    t.index ["painting_id"], name: "index_painting_painting_categories_on_painting_id"
  end

  create_table "paintings", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "beer"
    t.integer "price"
    t.text "details"
    t.integer "position"
    t.boolean "featured"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
