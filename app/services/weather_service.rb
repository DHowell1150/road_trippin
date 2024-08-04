class WeatherService
  def self.call_api(endpoint, params = {})
    response = conn.get(endpoint, params) do |request|
      request.params = params
      request.params[:key] = Rails.application.credentials.weather[:key]
    end
    parse_data(response)
  end
  
  def self.conn
    Faraday.new(url: 'https://api.weatherapi.com')
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
