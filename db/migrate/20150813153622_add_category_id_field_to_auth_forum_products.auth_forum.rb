# This migration comes from auth_forum (originally 20150810111804)
class AddCategoryIdFieldToAuthForumProducts < ActiveRecord::Migration
  def change
    add_column :auth_forum_products, :category_id, :integer
  end
end
