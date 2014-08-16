class RenameColumnsInCutoffAndQuota < ActiveRecord::Migration
  def change
  	remove_foreign_key "cutoffs", name: "cutoff_fk"
  	remove_foreign_key "quota", name: "quota_fk"
  	remove_column :cutoffs, :subject_id
  	remove_column :quota, :subject_id
  	add_column :cutoffs, :stream_id, :integer, null: false
  	add_column :quota, :stream_id, :integer, null: false
  end
end
