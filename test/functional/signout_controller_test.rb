require 'test_helper'

class SignoutControllerTest < ActionController::TestCase
  test "should get sign_out" do
    get :sign_out
    assert_response :success
  end

end
