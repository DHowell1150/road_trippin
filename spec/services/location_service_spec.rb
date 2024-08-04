require 'rails_helper'

RSpec.describe LocationService do
  it 'can return lat and long', :vcr do
    params = {  location: "thornton,co"}
    query = LocationService.call_api('/geocoding/v1/address', params)[:results]
    latLong = query.dig(0, :locations, 0, :latLng)

    expect(query).to be_an Array
    expect(latLong).to be_a Hash
    
    expect(latLong).to have_key(:lat)
    expect(latLong[:lat]).to be_a(Float)

    expect(latLong).to have_key(:lng)
    expect(latLong[:lng]).to be_a(Float)
  end
end