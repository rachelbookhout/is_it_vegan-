class RecipesController < ApplicationController
  require 'json'
  require 'net/http'

  def index
    app_id = ENV["YUMMLY_APPLICATION_ID"]
    app_key = ENV["YUMMLY_APPLICATION_KEY"]
    @search = params[:search]
    if @search
      @recipes = Yummly.search(params[:search])
      url = "http://api.yummly.com/v1/api/recipes?_app_id=#{app_id}&_app_key=#{app_key}&q=#{@search}&requirePictures=true"
      encoded_url = URI.encode(url)
      uri = URI("#{encoded_url}")
      @results =  Net::HTTP.get(uri)
  end
  end

  def show

    #@recipe
  end
end



