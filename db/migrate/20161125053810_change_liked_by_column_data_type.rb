class ChangeLikedByColumnDataType < ActiveRecord::Migration[5.0]
  def change
  	remove_column :refactors, :liked_by
  end
end
