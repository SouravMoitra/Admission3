class AddFkToAdditionalSubjects < ActiveRecord::Migration
  def up
    add_foreign_key "additional_subjects", "academics", name: "additional_subjects_fk"
  end
  def down
    remove_foregin_key "additional_subjects", name: "additional_subjects_fk"
  end
end
