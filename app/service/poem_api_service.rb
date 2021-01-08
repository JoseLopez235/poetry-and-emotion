require 'faraday'

class PoemApiService
  def self.search_poems(author)
    response = conn.get("/author,poemcount/#{author};10")
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new("https://poetrydb.org")
  end
end
