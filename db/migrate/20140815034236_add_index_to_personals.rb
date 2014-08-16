class AddIndexToPersonals < ActiveRecord::Migration
  def change
  	add_index "personals", ["user_id"], name: "index_personals_on_user_id", unique: true, using: :btree
  end
end
