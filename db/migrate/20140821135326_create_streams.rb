class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :stream_name, null: false

      t.timestamps
    end
  end
end
