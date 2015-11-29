require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test "hike not null" do
  	@event.hike_id = nil
  	assert_not @event.valid?
  end

  test "location not null" do
  	@event.location = nil
  	assert_not @event.valid?
  end

  test "name not null" do
  	@event.name = nil
  	assert_not @event.valid?
  end

end
