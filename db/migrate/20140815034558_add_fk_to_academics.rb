class AddFkToAcademics < ActiveRecord::Migration
  def up
    add_foreign_key :academics, :users, column: "user_id", name: "academics_user_id_fk"
  end
  def down
    remove_foreign_key(:academics, name: 'academics_user_id_fk')
  end
end
