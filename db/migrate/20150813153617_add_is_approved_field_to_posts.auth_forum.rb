# This migration comes from auth_forum (originally 20150807153409)
class AddIsApprovedFieldToPosts < ActiveRecord::Migration
  def change
    add_column :auth_forum_posts, :is_approved, :boolean, :default => false
  end
end
