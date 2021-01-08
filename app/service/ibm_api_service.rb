require 'faraday'

class IbmApiService
  def self.search_tone(poem)
    response = conn.get("/v3/tone") do |req|
      req.params[:version] = '2017-09-21'
      req.params[:text] = poem
    end
      JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/3cce1d7e-7faf-4ae9-9b8a-d0ba7e5b3db5") do |connection|
      connection.basic_auth('apikey', 'LtcWobio237yjsqs7W8y5WgHpAOJyuioNx87IdMcYGsL' )
    end
  end
end
