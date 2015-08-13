# This migration comes from auth_forum (originally 20150810175828)
class RenameCategoryTypeFieldToNameFieldToCategories < ActiveRecord::Migration
  def change
    rename_column(:auth_forum_categories, :category_type, :name)
  end
end
