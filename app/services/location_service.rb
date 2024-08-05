class LocationService
  def self.call_api(endpoint, params = { })
  response = conn.get(endpoint, params) do |request| 
    #pry line 7.5: response => nil, request => #<struct Faraday::Request http_method=nil, path=nil, params=nil, headers=nil, body=nil, options=nil>, params => {:location=>"Longmont, Co"}+

    request.params = params # pry line 7.5: request.params => {"location"=>"Longmont, Co", "key"=>"tqvNqsrsiwwh07C0W4KqzfAn3hlXSpV7"}
    request.params[:key] = Rails.application.credentials[:mapquest][:key]
  end
  parse_data(response) #returns a collection to .dig used in location_facade line 10
  end

  def self.conn
    Faraday.new(url: 'https://www.mapquestapi.com')
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
