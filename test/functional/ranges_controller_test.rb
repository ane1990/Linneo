require 'test_helper'

class RangesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
