# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Dose.delete_all
Ingredient.delete_all
Cocktail.delete_all

api_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'


parsed_url = JSON.parse(open(api_url).read)
drinks_array = parsed_url["drinks"]


drinks_array.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"].to_s)
end

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985553/ktgqcvmo4qymwjxooawg.jpg"
Cocktail.create(name: 'Moscow Mule', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985513/hgprxq6vbwpozq7tkbjh.jpg"
Cocktail.create(name: 'Mojito', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985496/u0yccx6m7chysadib0pn.jpg"
Cocktail.create(name: 'Long Island Ice Tea', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985719/ryoxhzjzgthwk7lfud59.jpg"
Cocktail.create(name: 'Whiskey Sour', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985606/u1erbc4hwaxquhqa4sly.jpg"
Cocktail.create(name: 'Singapore Sling', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985470/vpkfwlludu8qby8omri4.jpg"
Cocktail.create(name: 'Blue Lagoon', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985207/us1tecmhoky7dryfrkzh.jpg"
Cocktail.create(name: 'Gin Tonic', remote_photo_url: url)

url = "http://res.cloudinary.com/kittinson/image/upload/v1522985696/nu9pqzjgzjldtfogv0gg.jpg"
Cocktail.create(name: 'Lords-a-Leaping', remote_photo_url: url)


# cocktail = Cocktail.create([{ name: 'Mojito'}, { name: 'Negroni'} ])
