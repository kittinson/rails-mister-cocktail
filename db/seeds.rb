# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

api_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'


parsed_url = JSON.parse(open(api_url).read)
drinks_array = parsed_url["drinks"]


drinks_array.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"].to_s)
end



