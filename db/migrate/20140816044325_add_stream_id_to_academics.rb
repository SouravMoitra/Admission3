class AddStreamIdToAcademics < ActiveRecord::Migration
  def change
  	add_column :academics, :stream_id, :integer, null: false
  end
end
