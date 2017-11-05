class Recipe

  require 'httparty'
  default_params  q: "search"
  format  :json
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
    
  def self.for term
    get("",query: { query: term})["elements"]
  end

end
