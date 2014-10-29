require 'test_helper'

class ArtworkIterationsControllerTest < ActionController::TestCase
  setup do
    @artwork_iteration = artwork_iterations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artwork_iterations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork_iteration" do
    assert_difference('ArtworkIteration.count') do
      post :create, artwork_iteration: {  }
    end

    assert_redirected_to artwork_iteration_path(assigns(:artwork_iteration))
  end

  test "should show artwork_iteration" do
    get :show, id: @artwork_iteration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork_iteration
    assert_response :success
  end

  test "should update artwork_iteration" do
    patch :update, id: @artwork_iteration, artwork_iteration: {  }
    assert_redirected_to artwork_iteration_path(assigns(:artwork_iteration))
  end

  test "should destroy artwork_iteration" do
    assert_difference('ArtworkIteration.count', -1) do
      delete :destroy, id: @artwork_iteration
    end

    assert_redirected_to artwork_iterations_path
  end
end
