require 'test_helper'

class ProitemsControllerTest < ActionController::TestCase
  setup do
    @proitem = proitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proitem" do
    assert_difference('Proitem.count') do
      post :create, proitem: { someline: @proitem.someline }
    end

    assert_redirected_to proitem_path(assigns(:proitem))
  end

  test "should show proitem" do
    get :show, id: @proitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proitem
    assert_response :success
  end

  test "should update proitem" do
    put :update, id: @proitem, proitem: { someline: @proitem.someline }
    assert_redirected_to proitem_path(assigns(:proitem))
  end

  test "should destroy proitem" do
    assert_difference('Proitem.count', -1) do
      delete :destroy, id: @proitem
    end

    assert_redirected_to proitems_path
  end
end
