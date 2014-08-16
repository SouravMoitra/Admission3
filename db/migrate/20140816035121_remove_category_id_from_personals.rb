class RemoveCategoryIdFromPersonals < ActiveRecord::Migration
  def change
  	remove_column :personals, :category_id
  	add_column :personals, :category,:string, null: false
  end
end
