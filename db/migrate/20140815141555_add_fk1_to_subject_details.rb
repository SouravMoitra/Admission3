class AddFk1ToSubjectDetails < ActiveRecord::Migration
  def up
    add_foreign_key "subject_details", "subjects", name: "sub_deta_fk1"
  end
  def down
    remove_foregin_key "subject_details", name: "sub_deta_fk1"
  end
end
