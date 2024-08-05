class Forecast
  attr_reader  :current, :daily, :hourly #, :id

  def initialize(data)
    @id = data[:id] || SecureRandom.uuid
    @current = data[:attributes][:current_weather]
    @daily = data[:attributes][:daily_weather]
    @hourly = data[:attributes][:hourly_weather]
  end
end
