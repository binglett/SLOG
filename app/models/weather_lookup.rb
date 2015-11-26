class WeatherLookup 
	def fetch_weather
    HTTParty.get("http://api.wunderground.com/api/0e7aecad3bdf9da6/hourly/q/Canada/Vancouver.xml")
 	end

 	attr_accessor :temperature, :icon
 	def initialize
  	weather_hash = fetch_weather
  	assign_values(weather_hash)
	end

	def assign_values(weather_hash)
      hourly_forecast_response = weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
      self.temperature = hourly_forecast_response['temp']['english']
      self.icon = hourly_forecast_response['icon_url']
 	end
end