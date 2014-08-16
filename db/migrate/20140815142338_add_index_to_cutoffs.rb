class AddIndexToCutoffs < ActiveRecord::Migration
  def change
  	add_index "cutoffs", ["subject_id"], name: "index_subject_id_on_cutoffs", unique: true, using: :btree
  end
end
