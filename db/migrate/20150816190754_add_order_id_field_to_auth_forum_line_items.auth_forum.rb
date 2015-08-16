# This migration comes from auth_forum (originally 20150816171409)
class AddOrderIdFieldToAuthForumLineItems < ActiveRecord::Migration
  def change
    add_column :auth_forum_line_items, :order_id, :integer
  end
end
