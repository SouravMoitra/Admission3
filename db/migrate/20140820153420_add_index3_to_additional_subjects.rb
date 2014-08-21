class AddIndex3ToAdditionalSubjects < ActiveRecord::Migration
  def change
    add_index :additional_subjects, [:academic_id, :subject], unique: true
  end
end
