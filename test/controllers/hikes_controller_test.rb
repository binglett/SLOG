require 'test_helper'

class HikesControllerTest < ActionController::TestCase
  setup do
    @hike = hikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hikes)
  end

  test "should show hike" do
    get :show, id: @hike
    assert_response :success
  end

end
