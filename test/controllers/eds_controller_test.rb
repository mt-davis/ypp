require 'test_helper'

class EdsControllerTest < ActionController::TestCase
  setup do
    @ed = eds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed" do
    assert_difference('Ed.count') do
      post :create, ed: { school: @ed.school }
    end

    assert_redirected_to ed_path(assigns(:ed))
  end

  test "should show ed" do
    get :show, id: @ed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed
    assert_response :success
  end

  test "should update ed" do
    patch :update, id: @ed, ed: { school: @ed.school }
    assert_redirected_to ed_path(assigns(:ed))
  end

  test "should destroy ed" do
    assert_difference('Ed.count', -1) do
      delete :destroy, id: @ed
    end

    assert_redirected_to eds_path
  end
end
