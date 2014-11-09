require 'test_helper'

class AircraftnumbersControllerTest < ActionController::TestCase
  setup do
    @aircraftnumber = aircraftnumbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aircraftnumbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aircraftnumber" do
    assert_difference('Aircraftnumber.count') do
      post :create, aircraftnumber: { acnumber: @aircraftnumber.acnumber, rtafnumber: @aircraftnumber.rtafnumber, sqnumber: @aircraftnumber.sqnumber }
    end

    assert_redirected_to aircraftnumber_path(assigns(:aircraftnumber))
  end

  test "should show aircraftnumber" do
    get :show, id: @aircraftnumber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aircraftnumber
    assert_response :success
  end

  test "should update aircraftnumber" do
    patch :update, id: @aircraftnumber, aircraftnumber: { acnumber: @aircraftnumber.acnumber, rtafnumber: @aircraftnumber.rtafnumber, sqnumber: @aircraftnumber.sqnumber }
    assert_redirected_to aircraftnumber_path(assigns(:aircraftnumber))
  end

  test "should destroy aircraftnumber" do
    assert_difference('Aircraftnumber.count', -1) do
      delete :destroy, id: @aircraftnumber
    end

    assert_redirected_to aircraftnumbers_path
  end
end
