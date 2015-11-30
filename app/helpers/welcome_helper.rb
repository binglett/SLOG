module WelcomeHelper
	def to_celcius( fahrenheit )		
		return number_with_precision( fahrenheit.to_i/32.0, :precision => 2)
	end

end
