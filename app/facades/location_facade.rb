class LocationFacade
  def self.latLong(location_params)
    params = location_params

    result = LocationService.call_api('/geocoding/v1/address', params)[:results]
    latLong = result.dig(0, :locations, 0, :latLng)
  end

  def self.lat
    latLong[:lat]
  end

  def self.long
    latLong[:long]
  end
end

#This is an example where if API versions change, I should still be able to only change self.latLong and helper methods *should* keep same structure/logic