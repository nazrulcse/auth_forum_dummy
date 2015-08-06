# This migration comes from auth_forum (originally 20150806100184)
class AddPositionToCategories < ActiveRecord::Migration
  def change
    add_column :forem_categories, :position, :integer, :default => 0
  end
end
