class AddIndexToQuotas < ActiveRecord::Migration
  def change
  	add_index "quota", ["subject_id"], name: "index_subject_id_on_quotas", unique: true, using: :btree
  end
end
