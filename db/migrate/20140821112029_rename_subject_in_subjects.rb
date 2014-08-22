class RenameSubjectInSubjects < ActiveRecord::Migration
  def change
    rename_column :subjects, :subject, :subject_name
  end
end
