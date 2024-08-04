class WeatherService
  def self.call_api(endpoint, params = {})
    response = conn.get(endpoint, params) do |request|
      request.params = params
      request.params[:key] = Rails.application.credentials[:weather][:key]
      require 'pry' ; binding.pry
    end
    parse_data(response)
  end
  
  def self.conn
    Faraday.new(url: 'https://api.weatherapi.com/v1')
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
