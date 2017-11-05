class RecipesController < ApplicationController
  def index
    @search_term='swiss'
    
    @recipes = Recipe.for(@searh_term)	
  end
end
