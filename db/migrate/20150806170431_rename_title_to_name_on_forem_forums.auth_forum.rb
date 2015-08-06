# This migration comes from auth_forum (originally 20150806100183)
class RenameTitleToNameOnForemForums < ActiveRecord::Migration
  def up
    rename_column :forem_forums, :title, :name
  end

  def down
    rename_column :forem_forums, :name, :title
  end
end
