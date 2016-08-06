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

ActiveRecord::Schema.define(version: 20160806221001) do

  create_table "assessments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "points"
    t.string   "primary_age"
    t.string   "primary_edu"
    t.string   "primary_first_lang"
    t.string   "primary_second_lang"
    t.string   "primary_cdn_work"
    t.string   "secondary_edu"
    t.string   "secondary_first_lang"
    t.string   "secondary_cdn_work"
    t.string   "adapt_ed_lang"
    t.string   "adapt_ed_cdn_xp"
    t.string   "adapt_frg_xp_lang"
    t.string   "adapt_trade_cert_lang"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["user_id"], name: "index_assessments_on_user_id"
  end

  create_table "language_tests", force: :cascade do |t|
    t.string   "language"
    t.string   "test_evaluation"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "residence"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
