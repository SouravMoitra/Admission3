class CreateStreamQuota < ActiveRecord::Migration
  def change
    create_table :stream_quota do |t|
      t.integer :stream_id, null: false
      t.integer :gen, null: false, default: 0
      t.integer :sc, null: false, default: 0
      t.integer :st, null: false, default: 0
      t.integer :obc_a, null: false, default: 0
      t.integer :obc_b, null: false, default: 0


      t.timestamps
    end
  end
end
