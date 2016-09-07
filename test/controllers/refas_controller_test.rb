require 'test_helper'

class RefasControllerTest < ActionController::TestCase
  setup do
    @refa = refas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refa" do
    assert_difference('Refa.count') do
      post :create, refa: { name: @refa.name }
    end

    assert_redirected_to refa_path(assigns(:refa))
  end

  test "should show refa" do
    get :show, id: @refa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refa
    assert_response :success
  end

  test "should update refa" do
    patch :update, id: @refa, refa: { name: @refa.name }
    assert_redirected_to refa_path(assigns(:refa))
  end

  test "should destroy refa" do
    assert_difference('Refa.count', -1) do
      delete :destroy, id: @refa
    end

    assert_redirected_to refas_path
  end
end
