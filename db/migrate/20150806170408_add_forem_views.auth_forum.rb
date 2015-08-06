# This migration comes from auth_forum (originally 20150806100160)
class AddForemViews < ActiveRecord::Migration
  def change
    create_table :forem_views do |t|
      t.integer :user_id
      t.integer :topic_id
      t.datetime :created_at
    end
  end
end
