class AddFkToPersonals < ActiveRecord::Migration
  def up
    add_foreign_key(:personals, :users, column: 'user_id', name: 'personals_foreign_key')
  end
  def down
    remove_foreign_key(:personals, name: 'personals_foreign_key')
  end
end
