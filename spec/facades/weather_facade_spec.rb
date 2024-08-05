require 'rails_helper'

RSpec.describe WeatherFacade do
  it "returns entire location forecast" do
    params = { q: "40.16394,-105.10015"}
    result = WeatherFacade.full_forecast(params)

    expect(result).to be_a(Hash)
  end

#   it "returns current weather" do

#   end

#   it "returns hourly weather" do

#   end

#   it "returns daily weather" do

#   end
end