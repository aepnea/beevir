require 'test_helper'

class ComunidadesUsersControllerTest < ActionController::TestCase
  setup do
    @comunidad_user = comunidades_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunidades_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comunidad_user" do
    assert_difference('ComunidadUser.count') do
      post :create, comunidad_user: { comunidad_id: @comunidad_user.comunidad_id, user_id: @comunidad_user.user_id }
    end

    assert_redirected_to comunidad_user_path(assigns(:comunidad_user))
  end

  test "should show comunidad_user" do
    get :show, id: @comunidad_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comunidad_user
    assert_response :success
  end

  test "should update comunidad_user" do
    patch :update, id: @comunidad_user, comunidad_user: { comunidad_id: @comunidad_user.comunidad_id, user_id: @comunidad_user.user_id }
    assert_redirected_to comunidad_user_path(assigns(:comunidad_user))
  end

  test "should destroy comunidad_user" do
    assert_difference('ComunidadUser.count', -1) do
      delete :destroy, id: @comunidad_user
    end

    assert_redirected_to comunidades_users_path
  end
end
