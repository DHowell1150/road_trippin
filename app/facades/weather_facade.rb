class WeatherFacade 
  def self.full_forecast(lat_long)
    params = lat_long
    full_forecast = WeatherService.call_api('/v1/forecast.json', params)
  end
end


# def self.forecast

# end
# def self.current
#   current = {}
#   forecast[:current]

# end

# def self.daily

# end

# def self.hourly

# end
