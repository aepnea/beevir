require 'test_helper'

class TipoUnidadesControllerTest < ActionController::TestCase
  setup do
    @tipo_unidad = tipo_unidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_unidad" do
    assert_difference('TipoUnidad.count') do
      post :create, tipo_unidad: { nombre: @tipo_unidad.nombre }
    end

    assert_redirected_to tipo_unidad_path(assigns(:tipo_unidad))
  end

  test "should show tipo_unidad" do
    get :show, id: @tipo_unidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_unidad
    assert_response :success
  end

  test "should update tipo_unidad" do
    patch :update, id: @tipo_unidad, tipo_unidad: { nombre: @tipo_unidad.nombre }
    assert_redirected_to tipo_unidad_path(assigns(:tipo_unidad))
  end

  test "should destroy tipo_unidad" do
    assert_difference('TipoUnidad.count', -1) do
      delete :destroy, id: @tipo_unidad
    end

    assert_redirected_to tipo_unidades_path
  end
end
