class RecipesController < ApplicationController
  def index
    $search_term='jhu'
    
    @recipes = Recipe.for($search_term)	
  end
end
