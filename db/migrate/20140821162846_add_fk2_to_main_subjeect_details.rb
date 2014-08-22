class AddFk2ToMainSubjeectDetails < ActiveRecord::Migration
  def up
    add_foreign_key "main_subject_details", "academics", name: "sub_deta_fk2"
  end
  def down
    remove_foregin_key "main_subject_details", name: "sub_deta_fk2"
  end
end
