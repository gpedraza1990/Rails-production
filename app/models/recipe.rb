class Recipe
  include HTTParty
  base_uri 'google.com'
  key_value = ENV['FOOD2FORK_KEY']
  
  format  :html

  def self.for term
    get("")
  end

end
