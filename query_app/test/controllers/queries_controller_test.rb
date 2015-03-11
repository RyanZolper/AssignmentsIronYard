require 'test_helper'

class QueriesControllerTest < ActionController::TestCase
  test "should get nothing" do
    get :nothing
    assert_response :success
  end

end
