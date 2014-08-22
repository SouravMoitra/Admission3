class AddUniqueIndexToAdditionalSubjectDetails < ActiveRecord::Migration
  def change
     add_index "additional_subjects", ["academic_id", "subject_name"], name: "index_additional_subjects_on_academic_id_and_subject", unique: true, using: :btree
  end
end
