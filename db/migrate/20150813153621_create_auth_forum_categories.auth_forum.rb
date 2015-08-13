# This migration comes from auth_forum (originally 20150810111545)
class CreateAuthForumCategories < ActiveRecord::Migration
  def change
    create_table :auth_forum_categories do |t|
      t.string :category_type
      t.timestamps null: false
    end
  end
end
