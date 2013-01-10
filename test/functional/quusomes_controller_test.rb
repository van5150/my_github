require 'test_helper'

class QuusomesControllerTest < ActionController::TestCase
  setup do
    @quusome = quusomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quusomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quusome" do
    assert_difference('Quusome.count') do
      post :create, quusome: { title: @quusome.title }
    end

    assert_redirected_to quusome_path(assigns(:quusome))
  end

  test "should show quusome" do
    get :show, id: @quusome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quusome
    assert_response :success
  end

  test "should update quusome" do
    put :update, id: @quusome, quusome: { title: @quusome.title }
    assert_redirected_to quusome_path(assigns(:quusome))
  end

  test "should destroy quusome" do
    assert_difference('Quusome.count', -1) do
      delete :destroy, id: @quusome
    end

    assert_redirected_to quusomes_path
  end
end
