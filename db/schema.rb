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

ActiveRecord::Schema.define(version: 20140821175117) do

  create_table "academics", force: true do |t|
    t.integer  "user_id",                                                     null: false
    t.integer  "tenth_roll",                                   default: 0,    null: false
    t.integer  "tenth_year_pass",                              default: 2000, null: false
    t.decimal  "tenth_marks_percent", precision: 10, scale: 2, default: 40.0, null: false
    t.string   "tenth_board",                                                 null: false
    t.integer  "hs_roll",                                      default: 0,    null: false
    t.integer  "hs_year_pass",                                 default: 2002, null: false
    t.decimal  "hs_marks_percent",    precision: 10, scale: 2, default: 40.0, null: false
    t.string   "hs_board",                                                    null: false
    t.integer  "stream_id",                                                   null: false
    t.integer  "calculated_marks",                                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "academics", ["user_id"], name: "academics_user_id_fk", using: :btree

  create_table "additional_subjects", force: true do |t|
    t.string   "academic_id",  null: false
    t.string   "subject_name", null: false
    t.integer  "marks",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_subjects", ["academic_id", "subject_name"], name: "index_additional_subjects_on_academic_id_and_subject", unique: true, using: :btree

  create_table "main_subject_details", force: true do |t|
    t.integer  "main_subject_id", null: false
    t.integer  "academic_id",     null: false
    t.integer  "marks",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "main_subject_details", ["academic_id", "main_subject_id"], name: "index_main_subject_details_on_academic_id_and_subject_id", unique: true, using: :btree
  add_index "main_subject_details", ["main_subject_id"], name: "sub_details_fk1", using: :btree

  create_table "main_subjects", force: true do |t|
    t.integer  "stream_id",    null: false
    t.string   "subject_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "main_subjects", ["stream_id"], name: "subjects_fk", using: :btree

  create_table "personals", force: true do |t|
    t.integer  "user_id"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "fathers_name"
    t.string   "mothers_name"
    t.text     "address_present"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "photo"
    t.string   "category",        null: false
  end

  add_index "personals", ["category"], name: "category_index-onpersonals", using: :btree
  add_index "personals", ["user_id"], name: "index_personals_on_user_id", unique: true, using: :btree

  create_table "stream_cutoffs", force: true do |t|
    t.integer  "stream_id",              null: false
    t.integer  "gen",        default: 0, null: false
    t.integer  "sc",         default: 0, null: false
    t.integer  "st",         default: 0, null: false
    t.integer  "obc_a",      default: 0, null: false
    t.integer  "obc_b",      default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stream_cutoffs", ["stream_id"], name: "stream_cutoff_fk", using: :btree

  create_table "stream_quota", force: true do |t|
    t.integer  "stream_id",              null: false
    t.integer  "gen",        default: 0, null: false
    t.integer  "sc",         default: 0, null: false
    t.integer  "st",         default: 0, null: false
    t.integer  "obc_a",      default: 0, null: false
    t.integer  "obc_b",      default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stream_quota", ["stream_id"], name: "stream_quota_fk", using: :btree

  create_table "streams", force: true do |t|
    t.string   "stream_name",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seats",       default: 0, null: false
  end

  create_table "sub_cutoffs", force: true do |t|
    t.integer  "main_subject_id"
    t.integer  "gen"
    t.integer  "sc"
    t.integer  "st"
    t.integer  "obc_a"
    t.integer  "obc_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_cutoffs", ["main_subject_id"], name: "sub_cutoff_fK_to_main_subjects", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level",                  default: 1,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "academics", "users", name: "academics_user_id_fk"

  add_foreign_key "main_subject_details", "academics", name: "sub_deta_fk2"
  add_foreign_key "main_subject_details", "main_subjects", name: "sub_details_fk1"

  add_foreign_key "main_subjects", "streams", name: "subjects_fk"

  add_foreign_key "personals", "users", name: "personals_foreign_key"

  add_foreign_key "stream_cutoffs", "streams", name: "stream_cutoff_fk"

  add_foreign_key "stream_quota", "streams", name: "stream_quota_fk"

  add_foreign_key "sub_cutoffs", "main_subjects", name: "sub_cutoff_fK_to_main_subjects"

end
