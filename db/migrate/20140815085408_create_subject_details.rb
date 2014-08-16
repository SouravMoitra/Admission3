class CreateSubjectDetails < ActiveRecord::Migration
  def change
    create_table :subject_details do |t|
      t.integer "subject_id"
      t.integer "academic_id"
      t.integer "marks"

      t.timestamps
    end
  end
end
