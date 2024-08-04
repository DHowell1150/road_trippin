class Api::V1::ForecastController < ApplicationController
  def index
    lat_long = LocationFacade.latLong(params[:location]) # from postman/FE)
    lat = LocationFacade.lat
    long = LocationFacade.long
    require 'pry' ; binding.pry

    current_weather = WeatherFacade.current(lat_long)
    daily_weather = WeatherFacade.daily(lat_long)
    week_weather = WeatherFacade.week(lat_long)
    # Pass in lat and long to a WeatherFacade -> service -> api.  Name response and render this rLocatesponse as json
  end
end