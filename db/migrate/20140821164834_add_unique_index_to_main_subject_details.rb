class AddUniqueIndexToMainSubjectDetails < ActiveRecord::Migration
  def change
    add_index "main_subject_details", ["academic_id", "main_subject_id"], name: "index_main_subject_details_on_academic_id_and_subject_id", unique: true, using: :btree
  end
end
