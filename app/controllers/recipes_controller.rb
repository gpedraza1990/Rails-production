class RecipesController < ApplicationController
  def index
    @search_term='swiss'
    
    @recipes = Recipe.for()	
  end
end
