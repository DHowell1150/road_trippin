require 'rails_helper'

RSpec.describe "forecast" do
  it "returns forecast from searched location" do
    params = { location: "Denver, Co"}
    get "/api/v1/forecast", params: params
    expect(response).to be_successful
    expect(response.status).to eq(200)

    # forecast = JSON.parse(response.body, symbolize_names: true)[:data]

    # expect(forecast[:id]).to be_nil
    #Add once you know the rv
  end
end