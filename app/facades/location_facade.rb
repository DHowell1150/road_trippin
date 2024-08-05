class LocationFacade
  def self.latLong(location_params)
    require 'pry' ; binding.pry
    params = location_params 
    result = LocationService.call_api('/geocoding/v1/address', params)
    latLong_formatted(result)
  end
end
  
  def latLong_formatted(result)
    latLong = result.dig(:results, 0, :locations, 0, :latLng)
    "#{latLong[:lat]},#{latLong[:lng]}"
  end
#This may be an example where if API versions change, I should still be able to only change self.latLong and helper methods *should* keep same structure/logic