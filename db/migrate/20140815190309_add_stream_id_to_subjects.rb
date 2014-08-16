class AddStreamIdToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :stream_id, :integer, null: :false
  end
end
