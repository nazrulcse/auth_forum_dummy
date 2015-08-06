# This migration comes from auth_forum (originally 20150806100161)
class AddUpdatedAtAndCountToForemViews < ActiveRecord::Migration
  def change
    add_column :forem_views, :updated_at, :datetime
    add_column :forem_views, :count, :integer, :default => 0
  end
end
