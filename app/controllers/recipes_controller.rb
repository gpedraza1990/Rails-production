class RecipesController < ApplicationController
  def index
    @search_term = 'mocha'
    if params[:search].present?
      @search_term=params[:search]
    end	 
     @recipes = Recipe.for(@search_term)	
  end
end



