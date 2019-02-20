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

ActiveRecord::Schema.define(version: 2019_02_20_211319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "festival_applications", force: :cascade do |t|
    t.string "confirmation_code"
    t.string "group_name"
    t.string "facebook"
    t.string "twitter"
    t.integer "rating"
    t.integer "person_id"
    t.integer "festival_id"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "second_contact_name"
    t.string "second_email"
    t.string "second_phone"
    t.string "group_website"
    t.text "promo_summary"
    t.text "schedule_requirements"
    t.text "tech_requirements"
    t.string "judge_video_link"
    t.string "promo_video_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
