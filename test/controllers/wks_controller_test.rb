require 'test_helper'

class WksControllerTest < ActionController::TestCase
  setup do
    @wk = wks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wk" do
    assert_difference('Wk.count') do
      post :create, wk: { name: @wk.name }
    end

    assert_redirected_to wk_path(assigns(:wk))
  end

  test "should show wk" do
    get :show, id: @wk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wk
    assert_response :success
  end

  test "should update wk" do
    patch :update, id: @wk, wk: { name: @wk.name }
    assert_redirected_to wk_path(assigns(:wk))
  end

  test "should destroy wk" do
    assert_difference('Wk.count', -1) do
      delete :destroy, id: @wk
    end

    assert_redirected_to wks_path
  end
end
