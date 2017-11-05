class Recipe

  include HTTParty
  default_params fields "smallIcon, shortDescription" q: "search"
  format  :json
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com:80'
  base_uri "https://api.coursera.org/api/catalog.v1/courses"
    
  def self.for term
    get("",query: { query: term})["elements"]
  end

end
