class Api::V1::ForecastController < ApplicationController
  def index
    lat_long = LocationFacade.latLong(params[:location]) 

    full_forecast = WeatherFacade.new(lat_long)

    render json: ForecastSerializer.new(full_forecast)
  end
end