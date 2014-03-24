require 'test_helper'

class ComunidadControllerTest < ActionController::TestCase
  test "should get usuario1" do
    get :usuario1
    assert_response :success
  end

  test "should get usuario2" do
    get :usuario2
    assert_response :success
  end

end
