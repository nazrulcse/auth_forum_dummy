# This migration comes from auth_forum (originally 20150806100164)
class CreateForemCategories < ActiveRecord::Migration
  def change
    create_table :forem_categories do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end
end
