class AddCalculatedMarksToAcademics < ActiveRecord::Migration
  def change
    add_column :academics, :calculated_marks, :integer, null: false
  end
end
