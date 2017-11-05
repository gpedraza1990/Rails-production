class Recipe

  include HTTParty
  default_params fields "smallIcon, shortDescription" q: "search"
  format  :json
  
  base_uri "https://api.coursera.org/api/catalog.v1/courses"
    
  def self.for term
    get("",query: { query: term})["elements"]
  end

end
