class CreateRefactors < ActiveRecord::Migration[5.0]
  def change
    create_table :refactors do |t|
      t.integer :user_id
      t.integer :snippet_id
      t.string :code

      t.timestamps
    end
  end
end
