require 'test_helper'

class UsersUnidadesControllerTest < ActionController::TestCase
  setup do
    @user_unidad = users_unidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_unidad" do
    assert_difference('UserUnidad.count') do
      post :create, user_unidad: { unidad_id: @user_unidad.unidad_id, user_id: @user_unidad.user_id }
    end

    assert_redirected_to user_unidad_path(assigns(:user_unidad))
  end

  test "should show user_unidad" do
    get :show, id: @user_unidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_unidad
    assert_response :success
  end

  test "should update user_unidad" do
    patch :update, id: @user_unidad, user_unidad: { unidad_id: @user_unidad.unidad_id, user_id: @user_unidad.user_id }
    assert_redirected_to user_unidad_path(assigns(:user_unidad))
  end

  test "should destroy user_unidad" do
    assert_difference('UserUnidad.count', -1) do
      delete :destroy, id: @user_unidad
    end

    assert_redirected_to users_unidades_path
  end
end
