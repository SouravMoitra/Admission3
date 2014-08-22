class CreateMainSubjects < ActiveRecord::Migration
  def change
    create_table :main_subjects do |t|
      t.integer :stream_id, null: false
      t.string :subject_name, null: false

      t.timestamps
    end
  end
end
