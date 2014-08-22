class RenameSubjects < ActiveRecord::Migration
  def change
    rename_table :subjects, :main_subjects
  end
end
