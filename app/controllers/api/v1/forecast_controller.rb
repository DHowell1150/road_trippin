class Api::V1::ForecastController < ApplicationController
  def index
    lat_long = LocationFacade.latLong(params[:location]) # -> "39.74001,-104.99202"
    full_forecast = WeatherFacade.full_forecast(lat_long)

    render json: ForecastSerializer.new(full_forecast)
  end
end
