require 'rails_helper'

RSpec.describe LocationFacade do
  # VCR.use_cassette('cassette_name.yml') do
    it 'Returns lat and long' do
      params = { location: "Longmont, Co" }
      result = LocationFacade.latLong(params)

      expect(result).to be_an(String)
    end
  # end
end
