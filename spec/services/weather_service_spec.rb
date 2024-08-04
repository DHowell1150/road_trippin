require 'rails_helper'

RSpec.describe WeatherService do
  it "can return current conditions for location" do
    params = { q: "39.8705,-104.98552" }
    query = WeatherService.call_api('/v1/forecast.json', params)

    current = query[:current]
    expect(current).to be_a Hash

    expect(current).to have_key(:last_updated)
    expect(current[:last_updated]).to be_a(String)

    expect(current).to have_key(:temp_f)
    expect(current[:temp_f]).to be_a(Float)

    expect(current).to have_key(:condition)
    expect(current[:condition]).to be_a(Hash)

    expect(current[:condition]).to have_key(:icon)
    expect(current[:condition][:icon]).to be_a(String)

    expect(current).to have_key(:humidity)
    expect(current[:humidity]).to be_a(Integer)

    expect(current).to have_key(:uv)
    expect(current[:uv]).to be_a(Float)
  end

  it "can return forecast for location" do
    params = { q: "39.8705,-104.98552" }
    query = WeatherService.call_api('/v1/forecast.json', params)
    
    forecast = query.dig(:forecast, :forecastday, 0)
    expect(forecast).to be_a Hash

    expect(forecast).to have_key(:date)
    expect(forecast[:date]).to be_a(String)

    expect(forecast).to have_key(:astro)
    expect(forecast[:astro]).to be_a(Hash)

    expect(forecast[:astro]).to have_key(:sunrise)
    expect(forecast[:astro][:sunrise]).to be_a(String)

    expect(forecast[:astro]).to have_key(:sunset)
    expect(forecast[:astro][:sunset]).to be_a(String)

    expect(forecast).to have_key(:day)
    expect(forecast[:day]).to be_a(Hash)

    expect(forecast[:day]).to have_key(:maxtemp_f)
    expect(forecast[:day][:maxtemp_f]).to be_a(Float)

    expect(forecast[:day]).to have_key(:mintemp_f)
    expect(forecast[:day][:mintemp_f]).to be_a(Float)

    expect(forecast[:day][:condition]).to have_key(:text)
    expect(forecast[:day][:condition][:text]).to be_a(String)

    expect(forecast[:day][:condition]).to have_key(:icon)
    expect(forecast[:day][:condition][:icon]).to be_a(String)
  end
end
