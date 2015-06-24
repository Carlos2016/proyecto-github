require 'test_helper'

class CartersControllerTest < ActionController::TestCase
  setup do
    @carter = carters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carter" do
    assert_difference('Carter.count') do
      post :create, carter: { cartelera: @carter.cartelera, nombre: @carter.nombre, rating: @carter.rating }
    end

    assert_redirected_to carter_path(assigns(:carter))
  end

  test "should show carter" do
    get :show, id: @carter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carter
    assert_response :success
  end

  test "should update carter" do
    patch :update, id: @carter, carter: { cartelera: @carter.cartelera, nombre: @carter.nombre, rating: @carter.rating }
    assert_redirected_to carter_path(assigns(:carter))
  end

  test "should destroy carter" do
    assert_difference('Carter.count', -1) do
      delete :destroy, id: @carter
    end

    assert_redirected_to carters_path
  end
end
