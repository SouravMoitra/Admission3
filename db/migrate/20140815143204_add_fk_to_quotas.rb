class AddFkToQuotas < ActiveRecord::Migration
  def up
    add_foreign_key "quota", "subjects", name: "quota_fk"
  end
  def down
    remove_foregin_key "quota", name: "quota_fk"
  end
end
