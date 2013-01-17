require 'test_helper'

class MyWatchesControllerTest < ActionController::TestCase
  setup do
    @my_watch = my_watches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_watches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_watch" do
    assert_difference('MyWatch.count') do
      post :create, my_watch: { created_by: @my_watch.created_by }
    end

    assert_redirected_to my_watch_path(assigns(:my_watch))
  end

  test "should show my_watch" do
    get :show, id: @my_watch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_watch
    assert_response :success
  end

  test "should update my_watch" do
    put :update, id: @my_watch, my_watch: { created_by: @my_watch.created_by }
    assert_redirected_to my_watch_path(assigns(:my_watch))
  end

  test "should destroy my_watch" do
    assert_difference('MyWatch.count', -1) do
      delete :destroy, id: @my_watch
    end

    assert_redirected_to my_watches_path
  end
end
