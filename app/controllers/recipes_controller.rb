class RecipesController < ApplicationController
  def index
      @courses = Recipe.for($search_term)
    if params[:search].present?
      $search_term=params[:search]
    end	
  end
end
