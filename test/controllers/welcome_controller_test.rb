require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should_get_welcome" do
  	get :index 
  	assert_response :success
  	assert_select "title", "Welcome to SLOG; look for hikes here or sign up! | SLOG - Your one stop place to plan your hiking trip!"
  end
end
