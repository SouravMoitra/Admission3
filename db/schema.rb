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

ActiveRecord::Schema.define(version: 20140820153420) do

  create_table "academics", force: true do |t|
    t.integer  "user_id"
    t.integer  "tenth_roll",                                   default: 0
    t.integer  "tenth_year_pass",                              default: 2000
    t.decimal  "tenth_marks_percent", precision: 10, scale: 2, default: 40.0
    t.string   "tenth_board"
    t.integer  "hs_roll",                                      default: 0
    t.integer  "hs_year_pass",                                 default: 2002
    t.decimal  "hs_marks_percent",    precision: 10, scale: 2, default: 40.0
    t.string   "hs_board"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stream_id",                                                   null: false
    t.integer  "calculated_marks",                                            null: false
  end

  add_index "academics", ["user_id"], name: "index_academics_on_user_id", unique: true, using: :btree

  create_table "additional_subjects", force: true do |t|
    t.integer  "academic_id"
    t.string   "subject"
    t.integer  "subject_marks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_subjects", ["academic_id", "subject"], name: "index_additional_subjects_on_academic_id_and_subject", unique: true, using: :btree
  add_index "additional_subjects", ["academic_id"], name: "index_add_subs_on_academic_id", unique: true, using: :btree

  create_table "cutoffs", force: true do |t|
    t.integer  "gen"
    t.integer  "sc"
    t.integer  "st"
    t.integer  "obc_a"
    t.integer  "obc_b"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stream_id",  null: false
  end

  add_index "cutoffs", ["stream_id"], name: "cuttoff_fk_to_streams", using: :btree

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

  create_table "quota", force: true do |t|
    t.integer  "gen"
    t.integer  "sc"
    t.integer  "st"
    t.integer  "obc_a"
    t.integer  "obc_b"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stream_id",  null: false
  end

  add_index "quota", ["stream_id"], name: "streams_fk_to_streams", using: :btree

  create_table "streams", force: true do |t|
    t.string   "streams"
    t.integer  "seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_cutoffs", force: true do |t|
    t.integer  "subject_id"
    t.integer  "gen"
    t.integer  "sc"
    t.integer  "st"
    t.integer  "obc_a"
    t.integer  "obc_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_cutoffs", ["subject_id"], name: "sub_cutoff_fK_to_subjects", using: :btree

  create_table "subject_details", force: true do |t|
    t.integer  "subject_id"
    t.integer  "academic_id"
    t.integer  "marks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subject_details", ["academic_id", "subject_id"], name: "index_subject_details_on_academic_id_and_subject_id", unique: true, using: :btree
  add_index "subject_details", ["academic_id"], name: "sub_deta_fk2", using: :btree
  add_index "subject_details", ["subject_id", "academic_id"], name: "index_subject_id_on_sub_det", unique: true, using: :btree

  create_table "subjects", force: true do |t|
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stream_id"
  end

  add_index "subjects", ["stream_id"], name: "subject_fk", using: :btree

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

  add_foreign_key "additional_subjects", "academics", name: "additional_subjects_fk"

  add_foreign_key "cutoffs", "streams", name: "cuttoff_fk_to_streams"

  add_foreign_key "personals", "users", name: "personals_foreign_key"

  add_foreign_key "quota", "streams", name: "streams_fk_to_streams"

  add_foreign_key "sub_cutoffs", "subjects", name: "sub_cutoff_fK_to_subjects"

  add_foreign_key "subject_details", "academics", name: "sub_deta_fk2"
  add_foreign_key "subject_details", "subjects", name: "sub_deta_fk1"

  add_foreign_key "subjects", "streams", name: "subject_fk"

end
