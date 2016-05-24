require 'test_helper'

class RsourcesControllerTest < ActionController::TestCase
  setup do
    @rsource = rsources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rsources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rsource" do
    assert_difference('Rsource.count') do
      post :create, rsource: { name: @rsource.name }
    end

    assert_redirected_to rsource_path(assigns(:rsource))
  end

  test "should show rsource" do
    get :show, id: @rsource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rsource
    assert_response :success
  end

  test "should update rsource" do
    patch :update, id: @rsource, rsource: { name: @rsource.name }
    assert_redirected_to rsource_path(assigns(:rsource))
  end

  test "should destroy rsource" do
    assert_difference('Rsource.count', -1) do
      delete :destroy, id: @rsource
    end

    assert_redirected_to rsources_path
  end
end
