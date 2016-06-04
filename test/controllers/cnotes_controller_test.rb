require 'test_helper'

class CnotesControllerTest < ActionController::TestCase
  setup do
    @cnote = cnotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cnotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cnote" do
    assert_difference('Cnote.count') do
      post :create, cnote: { comment: @cnote.comment }
    end

    assert_redirected_to cnote_path(assigns(:cnote))
  end

  test "should show cnote" do
    get :show, id: @cnote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cnote
    assert_response :success
  end

  test "should update cnote" do
    patch :update, id: @cnote, cnote: { comment: @cnote.comment }
    assert_redirected_to cnote_path(assigns(:cnote))
  end

  test "should destroy cnote" do
    assert_difference('Cnote.count', -1) do
      delete :destroy, id: @cnote
    end

    assert_redirected_to cnotes_path
  end
end
