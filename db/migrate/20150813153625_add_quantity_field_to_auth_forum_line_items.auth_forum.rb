# This migration comes from auth_forum (originally 20150810152304)
class AddQuantityFieldToAuthForumLineItems < ActiveRecord::Migration
  def change
    add_column :auth_forum_line_items, :quantity, :integer,:default => 1
  end
end
