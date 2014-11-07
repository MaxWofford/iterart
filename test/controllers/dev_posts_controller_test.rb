require 'test_helper'

class DevPostsControllerTest < ActionController::TestCase
  setup do
    @dev_post = dev_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dev_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dev_post" do
    assert_difference('DevPost.count') do
      post :create, dev_post: { body: @dev_post.body, title: @dev_post.title }
    end

    assert_redirected_to dev_post_path(assigns(:dev_post))
  end

  test "should show dev_post" do
    get :show, id: @dev_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dev_post
    assert_response :success
  end

  test "should update dev_post" do
    patch :update, id: @dev_post, dev_post: { body: @dev_post.body, title: @dev_post.title }
    assert_redirected_to dev_post_path(assigns(:dev_post))
  end

  test "should destroy dev_post" do
    assert_difference('DevPost.count', -1) do
      delete :destroy, id: @dev_post
    end

    assert_redirected_to dev_posts_path
  end
end
