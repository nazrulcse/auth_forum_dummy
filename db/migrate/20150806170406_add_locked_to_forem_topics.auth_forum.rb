# This migration comes from auth_forum (originally 20150806100158)
class AddLockedToForemTopics < ActiveRecord::Migration
  def change
    add_column :forem_topics, :locked, :boolean, :null => false, :default => false
  end
end
