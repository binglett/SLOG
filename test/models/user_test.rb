require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
	test "username not null" do
		@user.username = nil
		assert_not @user.valid?
	end

	test "email not null" do
		@user.email = nil
		assert_not @user.valid?
	end

	test "email has @ symbol" do
		@user.email = "no_at_.com"
		assert_not @user.valid?
	end

	test "password not null" do
		@user.password = nil
		assert_not @user.valid?		
	end

	test "password longer than 6 chars" do
		@user.password = "12345"
		assert_not @user.valid?
	end

	test "password shorter than 40" do
		#below password is 41 characters long
		@user.password = "01234567890123456789012345678901234567891"
		assert_not @user.valid?
	end


end
