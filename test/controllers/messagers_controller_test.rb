require 'test_helper'

class MessagersControllerTest < ActionController::TestCase
  setup do
    @messager = messagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messager" do
    assert_difference('Messager.count') do
      post :create, messager: {  }
    end

    assert_redirected_to messager_path(assigns(:messager))
  end

  test "should show messager" do
    get :show, id: @messager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messager
    assert_response :success
  end

  test "should update messager" do
    patch :update, id: @messager, messager: {  }
    assert_redirected_to messager_path(assigns(:messager))
  end

  test "should destroy messager" do
    assert_difference('Messager.count', -1) do
      delete :destroy, id: @messager
    end

    assert_redirected_to messagers_path
  end
end
