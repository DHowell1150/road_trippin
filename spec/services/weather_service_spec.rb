require 'rails_helper'

RSpec.describe WeatherService do
  it "can return forecast for location" do
    params = { q: "39.8705,-104.98552" }
    query = WeatherService.call_api('/forecast.json', params)
    # weather = query.first 

    # expect(query).to be_an Array
    # expect(weather).to be_a Hash
  end
end
