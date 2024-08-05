class ForecastSerializer
  Include JSONAPI::Serializer

  attributes :current, :daily, :hourly
end














  # def self.format_forecast(forecast_data)
  #   forecast_data = 
	# 		"data": {
	# 			"id": null,
	# 			"type": "forecast",
	# 			"attributes": {
	# 				"current": {
	# 					last_updated: full_forecast.current[:last_updated], #THIS is the kind of dynamic k/v pair I want
	# 					temp: full_forecast.current[:temp],
	# 					feels_like: full_forecast.current[:feels_like],
	# 					humidity: full_forecast.current[:humidity],
	# 					uvi: full_forecast.current[:uvi],
	# 					visibility: full_forecast.current[:visibility],
	# 					condition: full_forecast.current[:condition],
	# 					icon: full_forecast.current[:icon]
	# 				},
	# 				daily: [
	# 					{
	# 						date: "2023-04-07",
	# 						sunrise: "07:13 AM",
	# 						sunset: "08:09 PM",
	# 						max_temp: 100.9,
	# 						min_temp: 90.9,
	# 						condition: "Sunny",
	# 						icon: "//cdn.weatherapi.com/weather/64x64/day/113.png"
	# 					},
	# 				],
	# 				hourly: [
	# 					{
	# 						time: "14:00",
	# 						temp: 54.5,
	# 						conditions: "Clear",
	# 						icon: "//cdn.weatherapi.com/weather/64x64/night/122.png"
	# 					},
	# 				]
	# 			}
	# 		}
	# 	}

    # NOTE: in controller, this would look like: 
  # full_forecast = WeatherSerializer.full_forecast(lat_long)
  # end