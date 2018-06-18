require_relative '../config/environment.rb'

marju = User.new("Marju")
jigar = User.new("Jigar")
lucy = User.new("Lucy")
gabriel = User.new("Gabriel")

potatos = Ingredient.new("potatos")
soup = Ingredient.new("soup")
pasta = Ingredient.new("pasta")
wrap = Ingredient.new("wrap")

sandwich = Recipe.new("sandwich")
lasagna = Recipe.new("lasangna")
stirfry = Recipe.new("stirfry")
porridge = Recipe.new("porridge")

RecipeIngredient.new(potatos, sandwich)
RecipeIngredient.new(pasta, sandwich)
RecipeIngredient.new(wrap, sandwich)
RecipeIngredient.new(wrap, stirfry)
RecipeIngredient.new(soup, porridge)

RecipeCard.new(marju, sandwich)
RecipeCard.new(jigar, stirfry)
RecipeCard.new(lucy, sandwich)
RecipeCard.new(gabriel, sandwich)
RecipeCard.new(marju, porridge)
RecipeCard.new(gabriel, porridge)
RecipeCard.new(marju, porridge)


Allergen.new(marju, wrap)
Allergen.new(jigar, soup)
Allergen.new(lucy, wrap)
Allergen.new(gabriel, wrap)
Allergen.new(lucy, soup)
Allergen.new(lucy, potatos)
binding.pry
