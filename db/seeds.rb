# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ingredients = Ingredient.create([{ name: "Lavender liquor" }, { name: "Violette" }, { name: "Ginger" }, { name: "Tequilla" }, { name: "Basil" }, { name: "Cucumber" }, { name: "Cinnamon" }, { name: "Rhum" }, { name: "Gin" }, { name: "Agave syrup" }, { name: "Cachaca" }, { name: "Grand Marnier" }, { name: "Amaretto" }])

require 'open-uri'
ingredients = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
json = JSON.parse(ingredients.read)
json["drinks"].each { |ingredient| Ingredient.create(name: ingredient["strIngredient1"]) }
