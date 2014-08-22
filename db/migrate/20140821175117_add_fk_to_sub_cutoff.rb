class AddFkToSubCutoff < ActiveRecord::Migration
  def up
    add_foreign_key "sub_cutoffs", "main_subjects", name: "sub_cutoff_fK_to_main_subjects"
  end
  def down
    remove_foreign_key "sub_cutoffs", name: "sub_cutoff_fK_to_main_subjects"
  end
end
