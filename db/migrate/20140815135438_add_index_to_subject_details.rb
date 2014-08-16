class AddIndexToSubjectDetails < ActiveRecord::Migration
  def change
  	add_index "subject_details", ["subject_id", "academic_id"], name: "index_subject_id_on_sub_det", unique: true, using: :btree
  end
end
