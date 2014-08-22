class AddFkToMainSubjeectDetails < ActiveRecord::Migration
  def up
    add_foreign_key "main_subject_details", "main_subjects", name: "sub_details_fk1"
  end
  def down
    remove_foregin_key "main_subject_details", name: "sub_details_fk1"
  end
end
