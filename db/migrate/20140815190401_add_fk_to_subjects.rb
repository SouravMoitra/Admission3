class AddFkToSubjects < ActiveRecord::Migration
  def up
  	add_foreign_key "subjects", "streams", name: "subject_fk"
  end
  def down
  	remove_foreign_key "subjects", name: "subject_fk"
  end
end
