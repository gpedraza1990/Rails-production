class Recipe
  include HTTParty
  base_uri 'www.food2fork.com/api/'
  key_value = ENV['FOOD2FORK_KEY']
  default_params fields: "smallIcon,shortDescription", q: "search"
  format  :json

  def self.for term
    get("",query: { query: term})["elements"]
  end

end
