class AddIndex3ToSubjectDetails < ActiveRecord::Migration
  def change
    add_index :subject_details, [:academic_id, :subject_id], unique: true
  end
end
