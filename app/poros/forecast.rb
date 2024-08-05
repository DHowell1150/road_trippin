class Forecast
  attr :current, :daily, :hourly

  def initialize(data)
    @current = data[:current]
    @daily = data[:daily]
    @hourly = data[:hourly]
  end

  # def format_current(current)
  #   {
  #     last_updated: current[:last_updated],
  #     temp: current[:temp_f],
  #     feels_like: current[:feelslike_f],
  #     humidity: current[:humidity],
  #     uvi: current[:uv],
  #     visibility: current[:vis_miles],
  #     condition: current[:condition][:text],
  #     icon: current[:condition][:icon]      
  #   }
  # end

  # def format_hourly(forecast)
  #   hourly_data = forecast[:forecastday].first[:hour]
  #   {
  #     time: hourly_data[:time],
  #     temp: hourly_data[:temp_f],
  #     conditions: hourly_data[:text],
  #     icon: hourly_data[:condition][:icon_f]
  #   }
  # end
  
  # def format_daily(forecast)
  #   daily_data = forecast[:forecast][:forecastday].first
  #   {
  #     date: daily_data[:date],
  #     sunrise: daily_data[:astro][:sunrise],
  #     sunset: daily_data[:astro][:sunset],
  #     max_temp: daily_data[:day][:maxtemp_f],
  #     min_temp: daily_data[:day][:mintemp_f],
  #     condition: daily_data[:day][:condition][:text],
  #     icon: daily_data[:day][:condition][:icon],
  #   }


  # end
end