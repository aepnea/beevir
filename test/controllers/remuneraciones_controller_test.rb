require 'test_helper'

class RemuneracionesControllerTest < ActionController::TestCase
  setup do
    @remuneracion = remuneraciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remuneraciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remuneracion" do
    assert_difference('Remuneracion.count') do
      post :create, remuneracion: { comunidad_id: @remuneracion.comunidad_id, empleado_id: @remuneracion.empleado_id, fecha: @remuneracion.fecha }
    end

    assert_redirected_to remuneracion_path(assigns(:remuneracion))
  end

  test "should show remuneracion" do
    get :show, id: @remuneracion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remuneracion
    assert_response :success
  end

  test "should update remuneracion" do
    patch :update, id: @remuneracion, remuneracion: { comunidad_id: @remuneracion.comunidad_id, empleado_id: @remuneracion.empleado_id, fecha: @remuneracion.fecha }
    assert_redirected_to remuneracion_path(assigns(:remuneracion))
  end

  test "should destroy remuneracion" do
    assert_difference('Remuneracion.count', -1) do
      delete :destroy, id: @remuneracion
    end

    assert_redirected_to remuneraciones_path
  end
end
