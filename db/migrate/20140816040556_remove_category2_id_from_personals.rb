class RemoveCategory2IdFromPersonals < ActiveRecord::Migration
  def change
  	remove_column :personals, :category_id
  end
end
