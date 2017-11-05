class RecipesController < ApplicationController
  def index
    
    if params[:search].present?
      $search_term=params[:search]
    end	 
     @recipes = Recipe.for($search_term)	
  end
end
