require 'test_helper'

class RhealthsControllerTest < ActionController::TestCase
  setup do
    @rhealth = rhealths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rhealths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rhealth" do
    assert_difference('Rhealth.count') do
      post :create, rhealth: { name: @rhealth.name }
    end

    assert_redirected_to rhealth_path(assigns(:rhealth))
  end

  test "should show rhealth" do
    get :show, id: @rhealth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rhealth
    assert_response :success
  end

  test "should update rhealth" do
    patch :update, id: @rhealth, rhealth: { name: @rhealth.name }
    assert_redirected_to rhealth_path(assigns(:rhealth))
  end

  test "should destroy rhealth" do
    assert_difference('Rhealth.count', -1) do
      delete :destroy, id: @rhealth
    end

    assert_redirected_to rhealths_path
  end
end
