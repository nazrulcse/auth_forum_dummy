# This migration comes from auth_forum (originally 20150806100176)
class AddNotifiedToForemPosts < ActiveRecord::Migration
  def change
    add_column :forem_posts, :notified, :boolean, :default => false
  end
end
