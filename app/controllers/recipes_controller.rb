class RecipesController < ApplicationController
  def index
    @search_term='swiss'
    
    @recipes = Recipe.for($search_term)	
  end
end
