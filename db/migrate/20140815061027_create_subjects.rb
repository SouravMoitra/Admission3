class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string "subjects"
      t.integer "seats"
      
      t.timestamps
    end
  end
end
