require 'test_helper'

class MyControllerTest < ActionController::TestCase
  test "should get lucia" do
    get :lucia
    assert_response :success
  end

end
