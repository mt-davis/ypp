require 'test_helper'

class OtcsControllerTest < ActionController::TestCase
  setup do
    @otc = otcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otc" do
    assert_difference('Otc.count') do
      post :create, otc: { name: @otc.name }
    end

    assert_redirected_to otc_path(assigns(:otc))
  end

  test "should show otc" do
    get :show, id: @otc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otc
    assert_response :success
  end

  test "should update otc" do
    patch :update, id: @otc, otc: { name: @otc.name }
    assert_redirected_to otc_path(assigns(:otc))
  end

  test "should destroy otc" do
    assert_difference('Otc.count', -1) do
      delete :destroy, id: @otc
    end

    assert_redirected_to otcs_path
  end
end
