require 'rails_helper'

RSpec.describe Forecast do
	it "exists and has attributes" do
		forecast_data = {
			"data": {
				"id": nil,
				"type": "forecast",
				"attributes": {
					"current_weather": {
						"last_updated": "2023-04-07 16:30",
						"temp": 55.0,
						"feels_like": 57.0,
						"humidity": 12,
						"uvi": 9.0,
						"visibility": 6.0,
						"condition": "Sunny",
						"icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
					},
					"daily_weather": [
						{
							"date": "2023-04-07",
							"sunrise": "07:13 AM",
							"sunset": "08:09 PM",
							"max_temp": 100.9,
							"min_temp": 90.9,
							"condition": "Sunny",
							"icon": "//cdn.weatherapi.com/weather/64x64/day/113.png"
						},
					],
					"hourly_weather": [
						{
							"time": "14:00",
							"temp": 54.5,
							"conditions": "Clear",
							"icon": "//cdn.weatherapi.com/weather/64x64/night/122.png"
						},
					]
				}
			}
		}
		full_forecast = Forecast.new(forecast_data[:data][:attributes])
		expect(full_forecast).to be_a(Forecast)
		expect(full_forecast.current).to be_a(Hash)
		expect(full_forecast.daily).to be_a(Array)
		expect(full_forecast.daily.first).to be_a(Hash)
		expect(full_forecast.hourly).to be_a(Array)
		expect(full_forecast.hourly.first).to be_a(Hash)
  end
end