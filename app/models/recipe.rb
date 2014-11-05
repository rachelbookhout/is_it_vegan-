class Recipe < ActiveRecord::Base
  has_many :users, through: :favorites
  has_many :favorites

#   def self.search_for
#     @results = HTTParty.get(URI.escape("http://api.yummly.com/v1/api/recipes?_app_id=#{app_id}&_app_key=#{app_key}&q=#{@search}&requirePictures=true"
# ))
#   end
end
