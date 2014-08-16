class AddIndexCategoryOnPersonals < ActiveRecord::Migration
  def change
  	add_index "personals", ["category"], name: "category_index-onpersonals", using: :btree
  end
end
