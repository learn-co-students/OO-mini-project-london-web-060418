#USERS
lucy = User.new("Lucy")
gabriel = User.new("Gabriel")
rishi = User.new("Rishi")
steven = User.new("Steven")

#RECIPES
lasagne = Recipe.new("Lasagne")
risotto = Recipe.new("Risotto")
pizza = Recipe.new("Pizza")
cake = Recipe.new("Cake")

#INGREDIENTS
flour = Ingredient.new("Flour")
cheese = Ingredient.new("Cheese")
beef = Ingredient.new("Beef")
tomato = Ingredient.new("Tomato")
rice = Ingredient.new("Rice")
egg = Ingredient.new("Egg")

#RECIPE_INGREDIENTS
#Lasagne:
RecipeIngredient.new(lasagne, cheese)
RecipeIngredient.new(lasagne, beef)
RecipeIngredient.new(lasagne, tomato)
RecipeIngredient.new(lasagne, flour)

#Risotto
RecipeIngredient.new(risotto, rice)
RecipeIngredient.new(risotto, tomato)
RecipeIngredient.new(risotto, cheese)

#Pizza
RecipeIngredient.new(pizza, cheese)
RecipeIngredient.new(pizza, flour)
RecipeIngredient.new(pizza, tomato)

#Cake
RecipeIngredient.new(cake, flour)
RecipeIngredient.new(cake, egg)

#RECIPE_CARDS
#Lucy's Recipes:
RecipeCard.new(lucy, cake, 180613, 5)
RecipeCard.new(lucy, pizza, 180528, 5)

#Gabriel's Recipes:
RecipeCard.new(gabriel, risotto)
RecipeCard.new(gabriel, lasagne)

#Rishi's Recipes:
RecipeCard.new(rishi, risotto)
RecipeCard.new(rishi, pizza)

#Steven's Recipes:
RecipeCard.new(steven, risotto)
RecipeCard.new(steven, cake)

#ALLERGENS
Allergen.new(lucy, egg)
Allergen.new(gabriel, cheese)
Allergen.new(rishi, beef)
Allergen.new(rishi, egg)
