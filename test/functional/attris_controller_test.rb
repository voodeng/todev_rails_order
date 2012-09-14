require 'test_helper'

class AttrisControllerTest < ActionController::TestCase
  setup do
    @attri = attris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attri" do
    assert_difference('Attri.count') do
      post :create, attri: { name: @attri.name }
    end

    assert_redirected_to attri_path(assigns(:attri))
  end

  test "should show attri" do
    get :show, id: @attri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attri
    assert_response :success
  end

  test "should update attri" do
    put :update, id: @attri, attri: { name: @attri.name }
    assert_redirected_to attri_path(assigns(:attri))
  end

  test "should destroy attri" do
    assert_difference('Attri.count', -1) do
      delete :destroy, id: @attri
    end

    assert_redirected_to attris_path
  end
end
