require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should create users with projects with art iterations" do
    (0..100).each do |i|
      @user = User.create!(:email => "test#{i}@example.com", :password => 'password', :password_confirmation => 'password')
      ArtworkIteration.create!(:user_id => @user.id, :name => "Artwork #{i}")
    end
    @last_id = User.last.id
    assert_equal(@last_id, User.last.artwork_iterations.last.user_id)
    assert_equal(@last_id, User.last.projects.last.user_id)
  end
end
