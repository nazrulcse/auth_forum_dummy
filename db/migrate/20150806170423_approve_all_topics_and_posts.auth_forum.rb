# This migration comes from auth_forum (originally 20150806100175)
class ApproveAllTopicsAndPosts < ActiveRecord::Migration
  def up
    Forem::Topic.update_all :state => "approved"
    Forem::Post.update_all :state => "approved"
  end

  def down
  end
end

