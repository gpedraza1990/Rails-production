class Recipe
  include HTTParty
  base_uri 'www.google.com'
  key_value = ENV['FOOD2FORK_KEY']
  
  format  :json

  def self.for term
    get("")["elemnts"]
  end

end
