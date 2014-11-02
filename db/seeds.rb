# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(0..100).each do |i|
  @user = User.create!(:email => "test#{i}@example.com", :password => 'password', :password_confirmation => 'password')
  ArtworkIteration.create!(:user_id => @user.id, :name => "Artwork #{i}")
end
