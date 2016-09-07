require 'test_helper'

class RefbsControllerTest < ActionController::TestCase
  setup do
    @refb = refbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refb" do
    assert_difference('Refb.count') do
      post :create, refb: { name: @refb.name }
    end

    assert_redirected_to refb_path(assigns(:refb))
  end

  test "should show refb" do
    get :show, id: @refb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refb
    assert_response :success
  end

  test "should update refb" do
    patch :update, id: @refb, refb: { name: @refb.name }
    assert_redirected_to refb_path(assigns(:refb))
  end

  test "should destroy refb" do
    assert_difference('Refb.count', -1) do
      delete :destroy, id: @refb
    end

    assert_redirected_to refbs_path
  end
end
