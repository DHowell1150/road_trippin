class ForecastSerializer
  Include JSONAPI::Serializer

  attributes :current, :daily, :hourly
  # def self.format_forecast(forecast_data)
  #   forecast_data = { #when do I do `symbolzize_names: true`?
	# 		"data": {
	# 			"id": null,
	# 			"type": "forecast",
	# 			"attributes": {
	# 				"current": {
	# 					"last_updated": "2023-04-07 16:30",
	# 					"temp": 55.0,
	# 					"feels_like": 57.0,
	# 					"humidity": 12,
	# 					"uvi": 9.0,
	# 					"visibility": 6.0,
	# 					"condition": "Sunny",
	# 					"icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
	# 				},
	# 				"daily": [
	# 					{
	# 						"date": "2023-04-07",
	# 						"sunrise": "07:13 AM",
	# 						"sunset": "08:09 PM",
	# 						"max_temp": 100.9,
	# 						"min_temp": 90.9,
	# 						"condition": "Sunny",
	# 						"icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
	# 					},
	# 				],
	# 				"hourly": [
	# 					{
	# 						"time": "14:00",
	# 						"temp": 54.5,
	# 						"conditions": "Clear",
	# 						"icon": "//cdn.weatherapi.com/weather/64x64/night/122.png"
	# 					},
	# 				]
	# 			}
	# 		}
	# 	}

    # NOTE: in controller, this would look like: 
  # full_forecast = WeatherSerializer.full_forecast(lat_long)
  # end
end
