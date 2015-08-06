# This migration comes from auth_forum (originally 20150806100185)
class AddPositionToForums < ActiveRecord::Migration
  def change
    add_column :forem_forums, :position, :integer, :default => 0
  end
end
