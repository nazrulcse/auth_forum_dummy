# This migration comes from auth_forum (originally 20150810065100)
class CreateAuthForumProducts < ActiveRecord::Migration
  def change
    create_table :auth_forum_products do |t|
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
