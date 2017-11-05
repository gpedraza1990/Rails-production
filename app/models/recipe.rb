class Recipe

  include HTTParty
  default_params  q: "search"
  format  :json
 key_value = ENV['FOOD2FORK_KEY'] || 'db2f3b5a9b50dc1a3cf8fe47d6326c1c'
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api/search?key=#{key_value}"
    
  def self.for term
    get("",query: { query: term})
  end

end
