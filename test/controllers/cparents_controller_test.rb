require 'test_helper'

class CparentsControllerTest < ActionController::TestCase
  setup do
    @cparent = cparents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cparents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cparent" do
    assert_difference('Cparent.count') do
      post :create, cparent: { name: @cparent.name }
    end

    assert_redirected_to cparent_path(assigns(:cparent))
  end

  test "should show cparent" do
    get :show, id: @cparent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cparent
    assert_response :success
  end

  test "should update cparent" do
    patch :update, id: @cparent, cparent: { name: @cparent.name }
    assert_redirected_to cparent_path(assigns(:cparent))
  end

  test "should destroy cparent" do
    assert_difference('Cparent.count', -1) do
      delete :destroy, id: @cparent
    end

    assert_redirected_to cparents_path
  end
end
