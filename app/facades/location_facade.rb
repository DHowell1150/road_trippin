class LocationFacade
  def self.latLong(location_params) #-> {:location=>"Longmont, Co"}
    params = { location: location_params } #-> {location: { location: lat_long: Denver, Co}}
    result = LocationService.call_api('/geocoding/v1/address', params)
    latLong_formatted(result) #result => "39.74001,-104.99202"
  end
end
  
  def latLong_formatted(result)
    latLong = result.dig(:results, 0, :locations, 0, :latLng)
    "#{latLong[:lat]},#{latLong[:lng]}"
    #expected result format: {:lat=>39.74001, :lng=>-104.99202}
  end
