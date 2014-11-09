require 'test_helper'

class PtypesControllerTest < ActionController::TestCase
  setup do
    @ptype = ptypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptype" do
    assert_difference('Ptype.count') do
      post :create, ptype: { description: @ptype.description, name: @ptype.name }
    end

    assert_redirected_to ptype_path(assigns(:ptype))
  end

  test "should show ptype" do
    get :show, id: @ptype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ptype
    assert_response :success
  end

  test "should update ptype" do
    patch :update, id: @ptype, ptype: { description: @ptype.description, name: @ptype.name }
    assert_redirected_to ptype_path(assigns(:ptype))
  end

  test "should destroy ptype" do
    assert_difference('Ptype.count', -1) do
      delete :destroy, id: @ptype
    end

    assert_redirected_to ptypes_path
  end
end
