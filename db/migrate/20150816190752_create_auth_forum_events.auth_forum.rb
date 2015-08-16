# This migration comes from auth_forum (originally 20150815180639)
class CreateAuthForumEvents < ActiveRecord::Migration
  def change
    create_table :auth_forum_events do |t|
      t.string :name
      t.string :title
      t.text :description
      t.integer :product_id
      t.timestamps null: false
    end
  end
end
