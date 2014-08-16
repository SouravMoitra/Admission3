class CreateAdditionalSubjects < ActiveRecord::Migration
  def change
    create_table :additional_subjects do |t|
      t.integer "academic_id"
      t.string   "subject"
      t.integer  "subject_marks"

      t.timestamps
    end
  end
end
