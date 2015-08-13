# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless User.all.present?
  User.create!(:name => 'Dummy User', :email => 'admin@authforum.com', :password => 'admin123', :password_confirmation => 'admin123', :forem_admin => true)
end

AuthForum::Category.create(:name => 'Mens')
AuthForum::Category.create(:name =>'Womens')
AuthForum::Category.create(:name =>'Fashion')
AuthForum::Category.create(:name =>'Clothing')
AuthForum::Category.create(:name => 'Fashion')
AuthForum::Post.create(:title => 'Rails Routing from the Outside', :description => '
    How to interpret the code in routes.rb.
    How to construct your own routes, using either the preferred resourceful style or the match method.
    What parameters to expect an action to receive.
    How to automatically create paths and URLs using route helpers.
    Advanced techniques such as constraints and Rack endpoints.', :user_id => User.first.id, :author => 'Dummy User')