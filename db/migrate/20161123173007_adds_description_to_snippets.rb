class AddsDescriptionToSnippets < ActiveRecord::Migration[5.0]
  def change
  	add_column :snippets, :description, :string
  end
end
