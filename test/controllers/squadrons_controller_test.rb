require 'test_helper'

class SquadronsControllerTest < ActionController::TestCase
  setup do
    @squadron = squadrons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squadrons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squadron" do
    assert_difference('Squadron.count') do
      post :create, squadron: { contact_name: @squadron.contact_name, contact_number: @squadron.contact_number, sq: @squadron.sq }
    end

    assert_redirected_to squadron_path(assigns(:squadron))
  end

  test "should show squadron" do
    get :show, id: @squadron
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squadron
    assert_response :success
  end

  test "should update squadron" do
    patch :update, id: @squadron, squadron: { contact_name: @squadron.contact_name, contact_number: @squadron.contact_number, sq: @squadron.sq }
    assert_redirected_to squadron_path(assigns(:squadron))
  end

  test "should destroy squadron" do
    assert_difference('Squadron.count', -1) do
      delete :destroy, id: @squadron
    end

    assert_redirected_to squadrons_path
  end
end
