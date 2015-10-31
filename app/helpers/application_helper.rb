module ApplicationHelper
	def full_title(page_title = '')
		base_title =  "SLOG - Your one stop place to plan your hiking trip!"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end	
	end
end
