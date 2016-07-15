require 'test_helper'

class MhealthsControllerTest < ActionController::TestCase
  setup do
    @mhealth = mhealths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mhealths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mhealth" do
    assert_difference('Mhealth.count') do
      post :create, mhealth: { name: @mhealth.name }
    end

    assert_redirected_to mhealth_path(assigns(:mhealth))
  end

  test "should show mhealth" do
    get :show, id: @mhealth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mhealth
    assert_response :success
  end

  test "should update mhealth" do
    patch :update, id: @mhealth, mhealth: { name: @mhealth.name }
    assert_redirected_to mhealth_path(assigns(:mhealth))
  end

  test "should destroy mhealth" do
    assert_difference('Mhealth.count', -1) do
      delete :destroy, id: @mhealth
    end

    assert_redirected_to mhealths_path
  end
end
