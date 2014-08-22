class RenameStreamsColumnInStreams < ActiveRecord::Migration
  def change
    rename_column :streams, :streams, :stream_name
  end
end
