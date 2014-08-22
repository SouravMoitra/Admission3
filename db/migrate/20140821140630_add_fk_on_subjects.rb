class AddFkOnSubjects < ActiveRecord::Migration
  def up
    add_foreign_key :main_subjects, :streams, name: "subjects_fk"
  end

  def down
    remove_foreign_key :main_subjects, name: "subjects_fk"
  end
end
