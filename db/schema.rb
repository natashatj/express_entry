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

ActiveRecord::Schema.define(version: 20160811032207) do

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

  create_table "candidates", force: :cascade do |t|
    t.integer  "edu_level_id"
    t.integer  "country_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "occupation"
    t.integer  "funds"
    t.boolean  "bac_is_pro?"
    t.boolean  "is_user?"
    t.text     "kids"
    t.boolean  "frg_work_xp_one_or_two"
    t.boolean  "frg_work_xp_three_or_more"
    t.boolean  "cdn_xp_visited"
    t.boolean  "cdn_xp_fr_en_studies"
    t.boolean  "cdn_xp_ps_greater_than_one"
    t.boolean  "cdn_xp_work_greater_than_one"
    t.boolean  "cdn_xp_work_permit_paid"
    t.boolean  "cdn_xp_study_perm_dli"
    t.boolean  "cdn_xp_none"
    t.boolean  "cdn_xp_one_yr"
    t.boolean  "cdn_xp_one_or_more"
    t.integer  "points"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "frg_work_xp_none"
    t.integer  "assessment_id"
    t.index ["assessment_id"], name: "index_candidates_on_assessment_id"
    t.index ["country_id"], name: "index_candidates_on_country_id"
    t.index ["edu_level_id"], name: "index_candidates_on_edu_level_id"
  end

  create_table "countries", force: :cascade do |t|
    t.integer  "country_number"
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "edu_levels", force: :cascade do |t|
    t.string   "name_of_edu_level"
    t.boolean  "tier_w_prof"
    t.boolean  "tier_no_prof"
    t.string   "number_creds"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "lang_score_tiers", force: :cascade do |t|
    t.integer  "language_test_id"
    t.string   "name_score"
    t.integer  "clb"
    t.string   "skill"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["language_test_id"], name: "index_lang_score_tiers_on_language_test_id"
  end

  create_table "lang_test_data", force: :cascade do |t|
    t.integer  "language_test_id"
    t.integer  "lang_score_tier_id"
    t.integer  "candidate_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["candidate_id"], name: "index_lang_test_data_on_candidate_id"
    t.index ["lang_score_tier_id"], name: "index_lang_test_data_on_lang_score_tier_id"
    t.index ["language_test_id"], name: "index_lang_test_data_on_language_test_id"
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
