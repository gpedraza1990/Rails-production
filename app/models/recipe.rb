class Recipe

  include HTTParty
  
  format  :json
  key_value = ENV['FOOD2FORK_KEY'] || 'db2f3b5a9b50dc1a3cf8fe47d6326c1c'
  default_params  key: key_value, fields: "recipes,count"
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api/"
  
  def self.for (term)
    get("/search", :query => { :q => term})["recipes"]
  end

end
