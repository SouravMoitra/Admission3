class AddSeatsToStreams < ActiveRecord::Migration
  def change
    add_column :streams, :seats, :integer, null: false, default: 0
  end
end
