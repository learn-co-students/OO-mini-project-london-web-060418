require 'bundler/setup'
Bundler.require
require_all 'app'

pizza = Recipe.new("Pizza")
pasta = Recipe.new("pasta")
salad = Recipe.new("Salad")
allegra = User.new("Allegra")
hanna = User.new("Hanna")
nick = User.new("Nick")
# recipe_1 = RecipeCard.new(pizza, allegra)
recipe_2 = RecipeCard.new(pasta, hanna)
recipe_3 = RecipeCard.new(pasta, nick)    #recipe_3.recipe
recipe_4 = RecipeCard.new(salad, nick)   #recipe_4.user
# recipe, date, rating
allegra.add_recipe_card("Pealla", "2018-06-18", 9)   #most recent
allegra.add_recipe_card("Almond milk", "2018-06-08", 10)
allegra.add_recipe_card("Pancakes", "2018-05-15", 6)
allegra.add_recipe_card("Veggie Soup", "2018-06-14", 7)
newcard= RecipeCard.new(pizza, allegra, "2010-05-10", 10)
hanna.add_recipe_card("Chocolate", "2018-05-01", 10)
allegra.top_three_recipes

water = Ingredient.new("water")
salt = Ingredient.new("salt")
tomatoes = Ingredient.new("tomatoes")
cream = Ingredient.new("cream")
more_water = Ingredient.new("more water")

tomato_soup = Recipe.new("Tomato Soup")

RecipeIngredient.new(tomato_soup, water)
RecipeIngredient.new(tomato_soup, salt)
RecipeIngredient.new(tomato_soup, tomatoes)

tomato_soup.add_ingredients([cream, more_water])

anna = User.new("Anna")
sara = User.new("Sara")
david = User.new("David")
nuts = Ingredient.new("nuts")
dairy = Ingredient.new("dairy")
gluten = Ingredient.new("gluten")
dairy_allergy = Allergen.new(anna, dairy)
dairy_allergy = Allergen.new(sara, dairy)
dairy_allergy = Allergen.new(david, dairy)
gluten_intolerance = Allergen.new(sara, gluten)
gluten_intolerance = Allergen.new(david, gluten)
