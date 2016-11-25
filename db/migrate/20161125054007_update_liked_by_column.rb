class UpdateLikedByColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :refactors, :liked_by, :integer, array: true, default: []
  end
end
