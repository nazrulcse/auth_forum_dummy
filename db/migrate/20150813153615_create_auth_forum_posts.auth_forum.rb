# This migration comes from auth_forum (originally 20150807142807)
class CreateAuthForumPosts < ActiveRecord::Migration
  def change
    create_table :auth_forum_posts do |t|
      t.string :title
      t.string :author
      t.text :description

      t.timestamps null: false
    end
  end
end
