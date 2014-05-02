require 'test_helper'

class SolicitudesControllerTest < ActionController::TestCase
  setup do
    @solicitud = solicitudes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post :create, solicitud: { adjunto: @solicitud.adjunto, comunidad_id: @solicitud.comunidad_id, descripcion: @solicitud.descripcion, estado_id: @solicitud.estado_id, role_id: @solicitud.role_id, titulo: @solicitud.titulo, unidad_id: @solicitud.unidad_id }
    end

    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should show solicitud" do
    get :show, id: @solicitud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud
    assert_response :success
  end

  test "should update solicitud" do
    patch :update, id: @solicitud, solicitud: { adjunto: @solicitud.adjunto, comunidad_id: @solicitud.comunidad_id, descripcion: @solicitud.descripcion, estado_id: @solicitud.estado_id, role_id: @solicitud.role_id, titulo: @solicitud.titulo, unidad_id: @solicitud.unidad_id }
    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete :destroy, id: @solicitud
    end

    assert_redirected_to solicitudes_path
  end
end
