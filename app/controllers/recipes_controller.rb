class RecipesController < ApplicationController
  def index
    @search_term = 'mocha'
    @recipes = Recipe.for(@search_term)	
  end
end
