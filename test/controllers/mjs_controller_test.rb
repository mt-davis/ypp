require 'test_helper'

class MjsControllerTest < ActionController::TestCase
  setup do
    @mj = mjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mj" do
    assert_difference('Mj.count') do
      post :create, mj: { name: @mj.name }
    end

    assert_redirected_to mj_path(assigns(:mj))
  end

  test "should show mj" do
    get :show, id: @mj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mj
    assert_response :success
  end

  test "should update mj" do
    patch :update, id: @mj, mj: { name: @mj.name }
    assert_redirected_to mj_path(assigns(:mj))
  end

  test "should destroy mj" do
    assert_difference('Mj.count', -1) do
      delete :destroy, id: @mj
    end

    assert_redirected_to mjs_path
  end
end
