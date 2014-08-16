class AddIndexToAdditionalSubjects < ActiveRecord::Migration
  def change
  	add_index "additional_subjects", ["academic_id"], name: "index_add_subs_on_academic_id", unique: true, using: :btree
  end
end
