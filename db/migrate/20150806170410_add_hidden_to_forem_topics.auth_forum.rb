# This migration comes from auth_forum (originally 20150806100162)
class AddHiddenToForemTopics < ActiveRecord::Migration
  def change
    add_column :forem_topics, :hidden, :boolean, :default => false
  end
end
