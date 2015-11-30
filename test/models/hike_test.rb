require 'test_helper'

class HikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @hike = hikes(:one)
  end
 
  test "name not null" do
  	@hike.name = nil
  	assert_not @hike.valid?
  end

  test "region not null" do
  	@hike.region = nil
  	assert_not @hike.valid?
  end

  test "distance not null" do
  	@hike.distance = nil
  	assert_not @hike.valid?
  end

  test "lat and lng not null" do
  	@hike.lng = nil
  	@hike.lat = nil  	
  	assert_not @hike.valid?
  end

  test "non-negative distance" do
  	@hike.distance = -1  	
  	assert_not @hike.valid?
  end

  test "max 50000km distance" do
  	@hike.distance = 50001	
  	assert_not @hike.valid?
  end

  test "valid latitude min -90" do
  	@hike.lat = -91  	
  	assert_not @hike.valid?
  end

  test "valid latitude max 90" do
  	@hike.lat = 91  	
  	assert_not @hike.valid?
  end

  test "valid longitude min -180" do
  	@hike.lat = -180 	
  	assert_not @hike.valid?
  end

  test "valid longitude max 180" do
  	@hike.lat = 180  	
  	assert_not @hike.valid?
  end

end
