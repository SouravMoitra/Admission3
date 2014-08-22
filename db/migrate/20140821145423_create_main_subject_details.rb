class CreateMainSubjectDetails < ActiveRecord::Migration
  def change
    create_table :main_subject_details do |t|
      t.integer :main_subject_id, null: false
      t.integer :academic_id, null: false
      t.integer :marks, null: false

      t.timestamps
    end
  end
end
