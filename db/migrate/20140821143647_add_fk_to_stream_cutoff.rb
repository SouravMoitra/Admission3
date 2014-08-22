class AddFkToStreamCutoff < ActiveRecord::Migration
  def up
    add_foreign_key :stream_cutoffs, :streams, name: "stream_cutoff_fk"
  end
  def down
    remove_foreign_key :stream_cutoffs, name: "streams_cutoff_fk"
  end
end
