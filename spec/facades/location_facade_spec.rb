require 'rails_helper'

RSpec.describe LocationFacade do
  # VCR.use_cassette('cassette_name.yml') do
    it 'Returns lat and long', :vcr do
      params = { location: "Longmont, Co" }

      result = LocationFacade.latLong(params)

      expect(result).to be_an(Hash)
      expect(result[:lat]).to be_an(Float)
      expect(result[:lng]).to be_an(Float)
    end
  # end
end