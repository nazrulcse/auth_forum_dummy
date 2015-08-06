# This migration comes from auth_forum (originally 20150806100170)
class CreateForemGroups < ActiveRecord::Migration
  def change
    create_table :forem_groups do |t|
      t.string :name
    end

    add_index :forem_groups, :name
  end
end
