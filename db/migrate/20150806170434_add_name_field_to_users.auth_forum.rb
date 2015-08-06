# This migration comes from auth_forum (originally 20150806100187)
class AddNameFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  end
end
