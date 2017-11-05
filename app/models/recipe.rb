class Recipe
  include HTTParty
  base_uri 'www.food2fork.com/api/'
  key_value = ENV['FOOD2FORK_KEY']
  default_params q: "search"
  format  :json

  def self.for term
    get("",query: { query: term})
  end

end
