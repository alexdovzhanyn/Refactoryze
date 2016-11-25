class RemovesLikedByFromSnippets < ActiveRecord::Migration[5.0]
  def change
  	remove_column :snippets, :liked_by
  end
end
