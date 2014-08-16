class AddFkToCutoffAndQuota < ActiveRecord::Migration
  def up
  	add_foreign_key "cutoffs", "streams", name: "cuttoff_fk_to_streams"
  	add_foreign_key "quota", "streams", name: "streams_fk_to_streams"
  end
  def down
  	remove_foreign_key "cutoffs",  name: "cuttoff_fk_to_streams"
  	remove_foreign_key "quota",  name: "streams_fk_to_streams"
  end
end
