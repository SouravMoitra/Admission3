class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
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
      t.integer  "category_id"
      t.string   "photo"

      t.timestamps
    end
  end
end
