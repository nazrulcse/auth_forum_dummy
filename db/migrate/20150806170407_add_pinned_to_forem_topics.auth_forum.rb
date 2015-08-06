# This migration comes from auth_forum (originally 20150806100159)
class AddPinnedToForemTopics < ActiveRecord::Migration
  def change
    add_column :forem_topics, :pinned, :boolean, :default => false, :nullable => false
  end
end
