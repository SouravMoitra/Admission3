class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.integer  "user_id"
      t.integer  "tenth_roll",                                   default: 0
      t.integer  "tenth_year_pass",                              default: 2000
      t.decimal  "tenth_marks_percent", precision: 10, scale: 2, default: 40.0
      t.string   "tenth_board"
      t.integer  "hs_roll",                                      default: 0
      t.integer  "hs_year_pass",                                 default: 2002
      t.decimal  "hs_marks_percent",    precision: 10, scale: 2, default: 40.0
      t.string   "hs_board"

      t.timestamps
    end
  end
end
