# This migration comes from auth_forum (originally 20150806100169)
# This migration comes from auth_forum (originally 20120222000227)
class AddForemTopicsLastPostAt < ActiveRecord::Migration
  def up
    add_column :forem_topics, :last_post_at, :datetime
    Forem::Topic.reset_column_information
    Forem::Topic.includes(:posts).find_each do |t|
      post = t.posts.last
      t.update_attribute(:last_post_at, post.updated_at)
    end
  end

  def down
    remove_column :forem_topics, :last_post_at
  end
end
