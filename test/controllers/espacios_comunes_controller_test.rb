require 'test_helper'

class EspaciosComunesControllerTest < ActionController::TestCase
  setup do
    @espacio_comun = espacios_comunes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:espacios_comunes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create espacio_comun" do
    assert_difference('EspacioComun.count') do
      post :create, espacio_comun: { comunidad_id: @espacio_comun.comunidad_id, descripcion: @espacio_comun.descripcion, espacio_comun: @espacio_comun.espacio_comun, foto: @espacio_comun.foto, precio: @espacio_comun.precio, reglamento: @espacio_comun.reglamento }
    end

    assert_redirected_to espacio_comun_path(assigns(:espacio_comun))
  end

  test "should show espacio_comun" do
    get :show, id: @espacio_comun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @espacio_comun
    assert_response :success
  end

  test "should update espacio_comun" do
    patch :update, id: @espacio_comun, espacio_comun: { comunidad_id: @espacio_comun.comunidad_id, descripcion: @espacio_comun.descripcion, espacio_comun: @espacio_comun.espacio_comun, foto: @espacio_comun.foto, precio: @espacio_comun.precio, reglamento: @espacio_comun.reglamento }
    assert_redirected_to espacio_comun_path(assigns(:espacio_comun))
  end

  test "should destroy espacio_comun" do
    assert_difference('EspacioComun.count', -1) do
      delete :destroy, id: @espacio_comun
    end

    assert_redirected_to espacios_comunes_path
  end
end
