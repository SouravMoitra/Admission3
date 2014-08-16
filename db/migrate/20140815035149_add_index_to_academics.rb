class AddIndexToAcademics < ActiveRecord::Migration
  def change
    add_index "academics", ["user_id"], name: "index_academics_on_user_id", unique: true, using: :btree
  end
end
