class AddsLikedByToSnippets < ActiveRecord::Migration[5.0]
  def change
  	add_column :snippets, :liked_by, :string, array: true, default: []
  end
end
