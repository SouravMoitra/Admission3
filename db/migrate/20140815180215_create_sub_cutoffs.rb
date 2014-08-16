class CreateSubCutoffs < ActiveRecord::Migration
  def change
    create_table :sub_cutoffs do |t|
      t.integer :subject_id
      t.integer :gen
      t.integer :sc
      t.integer :st
      t.integer :obc_a
      t.integer :obc_b

      t.timestamps
    end
  end
end
