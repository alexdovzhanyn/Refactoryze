class AddSlugToSnippets < ActiveRecord::Migration[5.0]
  def change
  	add_column :snippets, :slug, :string
  end
end
