require 'test_helper'

class PregsControllerTest < ActionController::TestCase
  setup do
    @preg = pregs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preg" do
    assert_difference('Preg.count') do
      post :create, preg: { name: @preg.name }
    end

    assert_redirected_to preg_path(assigns(:preg))
  end

  test "should show preg" do
    get :show, id: @preg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preg
    assert_response :success
  end

  test "should update preg" do
    patch :update, id: @preg, preg: { name: @preg.name }
    assert_redirected_to preg_path(assigns(:preg))
  end

  test "should destroy preg" do
    assert_difference('Preg.count', -1) do
      delete :destroy, id: @preg
    end

    assert_redirected_to pregs_path
  end
end
