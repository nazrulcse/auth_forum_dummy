# This migration comes from auth_forum (originally 20151020114850)
class CreateAuthForumAbouts < ActiveRecord::Migration
  def change
    create_table :auth_forum_abouts do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end
