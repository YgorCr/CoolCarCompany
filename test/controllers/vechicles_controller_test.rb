require 'test_helper'

class VechiclesControllerTest < ActionController::TestCase
  setup do
    @vechicle = vechicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vechicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vechicle" do
    assert_difference('Vechicle.count') do
      post :create, vechicle: { availability: @vechicle.availability, design: @vechicle.design, name: @vechicle.name, number: @vechicle.number, price: @vechicle.price, year: @vechicle.year }
    end

    assert_redirected_to vechicle_path(assigns(:vechicle))
  end

  test "should show vechicle" do
    get :show, id: @vechicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vechicle
    assert_response :success
  end

  test "should update vechicle" do
    patch :update, id: @vechicle, vechicle: { availability: @vechicle.availability, design: @vechicle.design, name: @vechicle.name, number: @vechicle.number, price: @vechicle.price, year: @vechicle.year }
    assert_redirected_to vechicle_path(assigns(:vechicle))
  end

  test "should destroy vechicle" do
    assert_difference('Vechicle.count', -1) do
      delete :destroy, id: @vechicle
    end

    assert_redirected_to vechicles_path
  end
end
