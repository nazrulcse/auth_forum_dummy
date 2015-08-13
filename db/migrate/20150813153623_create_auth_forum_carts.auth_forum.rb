# This migration comes from auth_forum (originally 20150810120807)
class CreateAuthForumCarts < ActiveRecord::Migration
  def change
    create_table :auth_forum_carts do |t|

      t.timestamps null: false
    end
  end
end
