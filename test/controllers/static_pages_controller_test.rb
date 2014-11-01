require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | Collaborart"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Collaborart"
  end

end
