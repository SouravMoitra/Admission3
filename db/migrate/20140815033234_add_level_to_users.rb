class AddLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :level, :integer,default: 1, null: false
  end
end
