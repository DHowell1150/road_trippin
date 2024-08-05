# require 'rails_helper'

# RSpec.describe Forecast do
# 	it "exists and has attributes" do
# 		forecast_data = {
# 			"data": {
# 				"id": null,
# 				"type": "forecast",
# 				"attributes": {
# 					"current_weather": {
# 						"last_updated": "2023-04-07 16:30",
# 						"temp": 55.0,
# 						"feels_like": 57.0,
# 						"humidity": 12,
# 						"uvi": 9.0,
# 						"visibility": 6.0,
# 						"condition": "Sunny",
# 						"icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# 					},
# 					"daily_weather": [
# 						{
# 							"date": "2023-04-07",
# 							"sunrise": "07:13 AM",
# 							"sunset": "08:09 PM",
# 							"max_temp": 100.9,
# 							"min_temp": 90.9,
# 							"condition": "Sunny",
# 							"icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# 						},
# 					],
# 					"hourly_weather": [
# 						{
# 							"time": "14:00",
# 							"temp": 54.5,
# 							"conditions": "Clear",
# 							"icon": "//cdn.weatherapi.com/weather/64x64/night/122.png"
# 						},
# 					]
# 				}
# 			}
# 		}
# 		full_forecast = Forecast.new(forecast_data)
# 		expect(full_forecast).to be_a(Forecast)
# 		require 'pry' ; binding.pry
# 		expect(full_forecast).to have_key(:current)
# 		expect(full_forecast[:current]).to be_a(Hash)
# 	end
# end
# #       "location": {
# #           "name": "Thornton",
# #           "region": "Colorado",
# #           "country": "United States of America",
# #           "lat": 39.87,
# #           "lon": -104.99,
# #           "tz_id": "America/Denver",
# #           "localtime_epoch": 1722800824,
# #           "localtime": "2024-08-04 13:47"
# #       },
# #       "current": {
# #           "last_updated": "2024-08-04 13:45",
# #           "temp_f": 97.6,
# #           "condition": {
# #               "text": "Sunny",
# #               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #           },
# #           "humidity": 12,
# #           "feelslike_f": 95.3,
# #           "heatindex_f": 95.3,
# #           "vis_miles": 6.0,
# #           "uv": 9.0
# #       },
# #       "forecast": {
# #           "forecastday": [
# #               {
# #                   "date": "2024-08-04",
# #                   "day": {
# #                       "maxtemp_f": 100.9,
# #                       "mintemp_f": 72.7,
# #                       "condition": {
# #                           "text": "Sunny",
# #                           "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                       }
# #                   },
# #                   "astro": {
# #                       "sunrise": "06:02 AM",
# #                       "sunset": "08:09 PM"
# #                   },
# #                   "hour": [
# #                       {
# #                           "time": "2024-08-04 00:00",
# #                           "temp_f": 79.2,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 01:00",
# #                           "temp_f": 78.0,
# #                           "condition": {
# #                               "text": "Overcast ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/122.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 02:00",
# #                           "temp_f": 76.7,
# #                           "condition": {
# #                               "text": "Partly Cloudy ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/116.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 03:00",
# #                           "temp_f": 75.4,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 04:00",
# #                           "temp_f": 74.7,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 05:00",
# #                           "temp_f": 73.7,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 06:00",
# #                           "temp_f": 74.0,
# #                           "condition": {
# #                               "text": "Partly Cloudy ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/116.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 07:00",
# #                           "temp_f": 75.9,
# #                           "condition": {
# #                               "text": "Overcast ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/122.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 08:00",
# #                           "temp_f": 78.9,
# #                           "condition": {
# #                               "text": "Partly Cloudy ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 09:00",
# #                           "temp_f": 82.9,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 10:00",
# #                           "temp_f": 87.3,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 11:00",
# #                           "temp_f": 91.4,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 12:00",
# #                           "temp_f": 94.9,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 13:00",
# #                           "temp_f": 97.6,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 14:00",
# #                           "temp_f": 99.2,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 15:00",
# #                           "temp_f": 96.6,
# #                           "condition": {
# #                               "text": "Partly Cloudy ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 16:00",
# #                           "temp_f": 92.9,
# #                           "condition": {
# #                               "text": "Patchy rain nearby",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/176.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 17:00",
# #                           "temp_f": 90.7,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 18:00",
# #                           "temp_f": 87.8,
# #                           "condition": {
# #                               "text": "Cloudy ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/119.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 19:00",
# #                           "temp_f": 84.7,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 20:00",
# #                           "temp_f": 80.8,
# #                           "condition": {
# #                               "text": "Sunny",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 21:00",
# #                           "temp_f": 78.9,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 22:00",
# #                           "temp_f": 78.3,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       },
# #                       {
# #                           "time": "2024-08-04 23:00",
# #                           "temp_f": 78.5,
# #                           "condition": {
# #                               "text": "Clear ",
# #                               "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png"
# #                           }
# #                       }
# #                   ]
# #               }
# #           ]
# #       }
# #   }
# #     full_forecast = Forecast.new(data)
# #     expect(full_forecast).to be_a(Forecast)
# #     expect(full_forecast).to have_key(:current)
# #     expect(full_forecast[:current]).to be_a(Hash)

# #     expect(full_forecast[:current]).to have_key(:last_updated)
# #     expect(full_forecast[:current][:last_updated]).to be_a(String)
# #     expect(full_forecast[:current]).to have_key(:condition)
# #     expect(full_forecast[:current][:condition]).to be_a(Hash)

# #     expect(full_forecast[:forecast][:forecastday]).to have_key(:date)
# #     expect(full_forecast[:forecast][:forecastday][:date]).to be_a(String)
# #     expect(full_forecast[:forecast][:forecastday]).to have_key(:day)
# #     expect(full_forecast[:forecast][:forecastday][:day]).to be_a(Hash)
# #     expect(full_forecast[:forecast][:forecastday]).to have_key(:astro)
# #     expect(full_forecast[:forecast][:forecastday][:astro]).to be_a(Hash)
# #     expect(full_forecast[:forecast][:forecastday]).to have_key(:hour)
# #     expect(full_forecast[:forecast][:forecastday][:hour]).to be_a(Hash)
# #     expect(full_forecast[:forecast][:forecastday]).to have_key(:hour)
# #     expect(full_forecast[:forecast][:forecastday][:hour]).to be_a(Hash)

# #     expect(full_forecast[:forecast][:forecastday][:hour]).to have_key(:condition)
# #     expect(full_forecast[:forecast][:forecastday][:hour][:condition]).to be_a(Hash)

# #     expect(full_forecast[:forecast][:forecastday][:hour][:condition]).to have_key(:text)
# #     expect(full_forecast[:forecast][:forecastday][:hour][:condition]).to be_a(String)

# #   end
# # end