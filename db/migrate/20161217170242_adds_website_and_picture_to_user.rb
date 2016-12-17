class AddsWebsiteAndPictureToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :website, :string
  	add_column :users, :profile_picture, :string, default: "http://is4.mzstatic.com/image/thumb/Purple71/v4/eb/72/8d/eb728d1d-e545-fcd8-397c-0b2d6b0c0083/source/512x512bb.jpg"
  end
end
