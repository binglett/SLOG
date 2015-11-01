require 'test_helper'

class SocialControllerTest < ActionController::TestCase
  test "should get social_list" do
    get :social_list
    assert_response :success
  end

end
