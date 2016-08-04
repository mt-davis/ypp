require 'test_helper'

class DischargesControllerTest < ActionController::TestCase
  setup do
    @discharge = discharges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discharges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discharge" do
    assert_difference('Discharge.count') do
      post :create, discharge: { reason: @discharge.reason }
    end

    assert_redirected_to discharge_path(assigns(:discharge))
  end

  test "should show discharge" do
    get :show, id: @discharge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discharge
    assert_response :success
  end

  test "should update discharge" do
    patch :update, id: @discharge, discharge: { reason: @discharge.reason }
    assert_redirected_to discharge_path(assigns(:discharge))
  end

  test "should destroy discharge" do
    assert_difference('Discharge.count', -1) do
      delete :destroy, id: @discharge
    end

    assert_redirected_to discharges_path
  end
end
