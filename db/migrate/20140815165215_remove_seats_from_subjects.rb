class RemoveSeatsFromSubjects < ActiveRecord::Migration
  def change
  	remove_column :subjects, :seats
  end
end
