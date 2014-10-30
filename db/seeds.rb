# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
Project.create!(:user_id => User.first.id, :name => 'fettered-fox')
ArtworkIteration.create!(:user_id => User.first.id, :project_id => Project.first.id, :name => 'I\'m a name')
