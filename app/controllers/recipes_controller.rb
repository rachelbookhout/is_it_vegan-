class RecipesController < ApplicationController
  require 'json'
  def index
    @search = params[:search]
    if @search
      binding.pry
      @recipes = Yummly.search(params[:search])
      binding.pry
    end
  end

  def show

    #@recipe
  end
end



