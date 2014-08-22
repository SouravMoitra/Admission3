class RenameSubjectIdInSubCutoffs < ActiveRecord::Migration
  def change
    remove_foreign_key "sub_cutoffs", name: "sub_cutoff_fK_to_subjects"
    remove_foreign_key "subject_details", name: "sub_deta_fk1"
    rename_column :sub_cutoffs, :subject_id, :main_subject_id
  end
end
