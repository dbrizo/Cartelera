require 'test_helper'

class CartelsControllerTest < ActionController::TestCase
  setup do
    @cartel = cartels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartel" do
    assert_difference('Cartel.count') do
      post :create, cartel: { hora: @cartel.hora, nombre: @cartel.nombre, sala: @cartel.sala }
    end

    assert_redirected_to cartel_path(assigns(:cartel))
  end

  test "should show cartel" do
    get :show, id: @cartel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartel
    assert_response :success
  end

  test "should update cartel" do
    patch :update, id: @cartel, cartel: { hora: @cartel.hora, nombre: @cartel.nombre, sala: @cartel.sala }
    assert_redirected_to cartel_path(assigns(:cartel))
  end

  test "should destroy cartel" do
    assert_difference('Cartel.count', -1) do
      delete :destroy, id: @cartel
    end

    assert_redirected_to cartels_path
  end
end
