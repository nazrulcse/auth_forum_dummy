# This migration comes from auth_forum (originally 20150806100157)
class AddReplyToToForemPosts < ActiveRecord::Migration
  def change
    add_column :forem_posts, :reply_to_id, :integer
  end
end
