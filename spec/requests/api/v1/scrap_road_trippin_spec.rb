require 'rails_helper'

describe "Forecast index endpoint" do 
  it "sends a Weather details for Location" do
    # factory bot/faker?
    # #object
  
    forecast_data = {        
			"data": {
				"id": "null",
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
    forecast = Forecast.new(forecast_data)

    get '/api/v1/forecast?location=denver,co'
    expect(response).to be_successful

    # forecast = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_a(Hash)
    expect(response[:data]).to be_a(Hash)

    expect(response[:data]).to have_key(:id)
    # expect(response[:data][:id]).to be null
    
    expect(response[:data]).to have_key(:type)
    expect(response[:data][:type]).to be_a("forecast")

    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to be_a(Hash)
    
    expect(response[:data][:attributes]).to have_key(:current_weather)
    expect(response[:data][:attributes][:current_weather]).to be_a(Hash)
    expect(response[:data][:attributes][:current_weather]).to have_key(:last_updated)
    expect(response[:data][:attributes][:current_weather][:last_updated]).to be_a(String)
    expect(response[:data][:attributes][:current_weather]).to have_key(:temp)
    expect(response[:data][:attributes][:current_weather][:temp]).to be_a(Float)
    expect(response[:data][:attributes][:current_weather]).to have_key(:condition)
    expect(response[:data][:attributes][:current_weather][:condition]).to be_a(String)
    expect(response[:data][:attributes][:current_weather]).to have_key(:text)
    expect(response[:data][:attributes][:current_weather][:text]).to be_a(String)
    
    expect(response[:data][:attributes]).to have_key(:daily_weather)
    expect(response[:data][:attributes][:daily_weather]).to be_a(Array)
    expect(response[:data][:attributes][:daily_weather].first).to have_key(:date)
    expect(response[:data][:attributes][:daily_weather].first[:date]).to be_a(String)
    expect(response[:data][:attributes][:daily_weather].first).to have_key(:sunrise)
    expect(response[:data][:attributes][:daily_weather].first[:sunrise]).to be_a(String)
    expect(response[:data][:attributes][:daily_weather].first).to have_key(:max_temp)
    expect(response[:data][:attributes][:daily_weather].first[:max_temp]).to be_a(Float)
    expect(response[:data][:attributes][:daily_weather].first).to have_key(:conditions)
    expect(response[:data][:attributes][:daily_weather].first[:conditions]).to be_a(String)
    
    expect(response[:data][:attributes]).to have_key(:hourly_weather)
    expect(response[:data][:attributes][:hourly_weather]).to be_a(Array)
    expect(response[:data][:attributes][:hourly_weather].first).to have_key(:time)
    expect(response[:data][:attributes][:hourly_weather].first[:time]).to be_a(String)
    expect(response[:data][:attributes][:hourly_weather].first).to have_key(:temp)
    expect(response[:data][:attributes][:hourly_weather].first[:temp]).to be_a(Float)
    expect(response[:data][:attributes][:hourly_weather].first).to have_key(:condition)
    expect(response[:data][:attributes][:hourly_weather].first[:condition]).to be_a(String)
    expect(response[:data][:attributes][:hourly_weather].first).to have_key(:icon)
    expect(response[:data][:attributes][:hourly_weather].first[:icon]).to be_a(String)
  end
end
