class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.integer :user_id, null: false
      t.integer "tenth_roll", default: 0, null: false
      t.integer "tenth_year_pass", default: 2000, null: false
      t.decimal "tenth_marks_percent", precision: 10, scale: 2, default: 40.0, null: false
      t.string "tenth_board", null: false
      t.integer "hs_roll", default: 0, null: false
      t.integer "hs_year_pass", default: 2002, null: false
      t.decimal "hs_marks_percent", precision: 10, scale: 2, default: 40.0, null: false
      t.string "hs_board", null: false
      t.integer "stream_id", null: false, null: false
      t.integer "calculated_marks", null: false, null: false

      t.timestamps
    end
  end
end
