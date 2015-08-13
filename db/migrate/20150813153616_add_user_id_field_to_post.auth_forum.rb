# This migration comes from auth_forum (originally 20150807152620)
class AddUserIdFieldToPost < ActiveRecord::Migration
  def change
    add_column :auth_forum_posts, :user_id, :integer
  end
end
