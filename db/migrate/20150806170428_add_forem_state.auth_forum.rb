# This migration comes from auth_forum (originally 20150806100180)
class AddForemState < ActiveRecord::Migration
  def change
    unless column_exists?(user_class, :forem_state)
      add_column user_class, :forem_state, :string, :default => 'pending_review'
    end
  end

  def user_class
    Forem.user_class.table_name.downcase.to_sym
  end
end
