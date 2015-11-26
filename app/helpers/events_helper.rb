module EventsHelper

	def days_left( dateNow, eventDate )
		daysLeft = ( eventDate - dateNow ).to_i
		if daysLeft < 0  
			return "Event has already passed"
		elsif daysLeft == 0 
			return "The event is today!"				
		else
			return "Only " + daysLeft.to_s + " days left until the event!" 
		end
	end 

end
