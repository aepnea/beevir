require 'test_helper'

class ComunidadesControllerTest < ActionController::TestCase
  setup do
    @comunidad = comunidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comunidad" do
    assert_difference('Comunidad.count') do
      post :create, comunidad: { ciudad: @comunidad.ciudad, direccion: @comunidad.direccion, nombre: @comunidad.nombre, region_id: @comunidad.region_id, tipo_unidad_id: @comunidad.tipo_unidad_id, user_id: @comunidad.user_id }
    end

    assert_redirected_to comunidad_path(assigns(:comunidad))
  end

  test "should show comunidad" do
    get :show, id: @comunidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comunidad
    assert_response :success
  end

  test "should update comunidad" do
    patch :update, id: @comunidad, comunidad: { ciudad: @comunidad.ciudad, direccion: @comunidad.direccion, nombre: @comunidad.nombre, region_id: @comunidad.region_id, tipo_unidad_id: @comunidad.tipo_unidad_id, user_id: @comunidad.user_id }
    assert_redirected_to comunidad_path(assigns(:comunidad))
  end

  test "should destroy comunidad" do
    assert_difference('Comunidad.count', -1) do
      delete :destroy, id: @comunidad
    end

    assert_redirected_to comunidades_path
  end
end
