require 'test_helper'

class SqAcsControllerTest < ActionController::TestCase
  setup do
    @sq_ac = sq_acs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sq_acs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sq_ac" do
    assert_difference('SqAc.count') do
      post :create, sq_ac: { aircraft_id: @sq_ac.aircraft_id, quantity: @sq_ac.quantity, squadron_id: @sq_ac.squadron_id }
    end

    assert_redirected_to sq_ac_path(assigns(:sq_ac))
  end

  test "should show sq_ac" do
    get :show, id: @sq_ac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sq_ac
    assert_response :success
  end

  test "should update sq_ac" do
    patch :update, id: @sq_ac, sq_ac: { aircraft_id: @sq_ac.aircraft_id, quantity: @sq_ac.quantity, squadron_id: @sq_ac.squadron_id }
    assert_redirected_to sq_ac_path(assigns(:sq_ac))
  end

  test "should destroy sq_ac" do
    assert_difference('SqAc.count', -1) do
      delete :destroy, id: @sq_ac
    end

    assert_redirected_to sq_acs_path
  end
end
