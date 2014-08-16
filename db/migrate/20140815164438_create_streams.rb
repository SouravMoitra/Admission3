class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string "streams"
      t.integer "seats"
      
      t.timestamps
    end
  end
end
