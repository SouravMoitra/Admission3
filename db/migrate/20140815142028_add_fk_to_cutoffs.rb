class AddFkToCutoffs < ActiveRecord::Migration
  def up
    add_foreign_key "cutoffs", "subjects", name: "cutoff_fk"
  end
  def down
    remove_foregin_key "cutoffs", name: "cutoff_fk"
  end
end
