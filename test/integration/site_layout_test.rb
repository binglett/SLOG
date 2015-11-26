require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
	test "layout links for home page" do
		get root_path
		assert_template 'welcome/index'
		assert_select "a[href=?]", root_path
		assert_select "a[href=?]", new_sesssion_path
		assert_select "a[href=?]", new_user_path, count: 2
	end 

	test "layout for user home page" do
		get user
	end

	test "layout links for events page" do
	
	end

end
