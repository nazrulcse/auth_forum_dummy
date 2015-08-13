# This migration comes from auth_forum (originally 20150810072452)
class AddImageToAuthForumProducts < ActiveRecord::Migration
  def change
    add_column :auth_forum_products, :image, :string
  end
end
