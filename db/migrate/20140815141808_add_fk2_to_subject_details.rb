class AddFk2ToSubjectDetails < ActiveRecord::Migration
  def up
    add_foreign_key "subject_details", "academics", name: "sub_deta_fk2"
  end
  def down
    remove_foregin_key "subject_details", name: "sub_deta_fk2"
  end
end
