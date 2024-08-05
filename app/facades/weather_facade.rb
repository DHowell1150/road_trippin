class WeatherFacade 
  def self.full_forecast(lat_long) #{:q=>"40.16394,-105.10015"}
    params = { lat_long: lat_long } #{:lat_long=>{:q=>"40.16394,-105.10015"}}
    full_forecast = WeatherService.call_api('/v1/forecast.json', params)
  end
end
