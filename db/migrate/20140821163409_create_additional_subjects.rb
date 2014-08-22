class CreateAdditionalSubjects < ActiveRecord::Migration
  def change
    create_table :additional_subjects do |t|
      t.string :academic_id, null: false
      t.string :subject_name, null: false
      t.integer :marks, null: false

      t.timestamps
    end
  end
end
