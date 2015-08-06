# This migration comes from auth_forum (originally 20150806100165)
class AddCategoryIdToForums < ActiveRecord::Migration
  def change
    add_column :forem_forums, :category_id, :integer

    if Forem::Forum.count > 0
      Forem::Forum.update_all :category_id => Forem::Category.first.id
    end
  end
end
