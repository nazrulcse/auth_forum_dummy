# This migration comes from auth_forum (originally 20150806100154)
class CreateForemForums < ActiveRecord::Migration
  def up
    create_table :forem_forums do |t|
      t.string :title
      t.text :description
    end

  end

  def down
    drop_table :forem_forums
  end
end
