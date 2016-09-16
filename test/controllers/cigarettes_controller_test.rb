require 'test_helper'

class CigarettesControllerTest < ActionController::TestCase
  setup do
    @cigarette = cigarettes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cigarettes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cigarette" do
    assert_difference('Cigarette.count') do
      post :create, cigarette: { name: @cigarette.name }
    end

    assert_redirected_to cigarette_path(assigns(:cigarette))
  end

  test "should show cigarette" do
    get :show, id: @cigarette
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cigarette
    assert_response :success
  end

  test "should update cigarette" do
    patch :update, id: @cigarette, cigarette: { name: @cigarette.name }
    assert_redirected_to cigarette_path(assigns(:cigarette))
  end

  test "should destroy cigarette" do
    assert_difference('Cigarette.count', -1) do
      delete :destroy, id: @cigarette
    end

    assert_redirected_to cigarettes_path
  end
end
