class User

 ALL = []

 attr_accessor :name

 def initialize(name)
   @name = name

   ALL << self
 end

 def recipes
   #reeturn all recipes we have
   all_cards = find_recipe_cards
   all_cards.map do |card|
     card.recipe
   end
 end

 def find_recipe_cards
   all_cards = RecipeCard.all.select do |recipecard|
     recipecard.user = self
   end
 end

 def add_recipe_card(recipe, date, rating)
   RecipeCard.new(self, recipe, date, rating)
 end

 def declare_allergen(ingredient)
   Allergen.new(self, ingredient)
 end

 def allergens
   Allergen.all.select do |allergy|
     allergy.user == self
   end
 end

 def top_three_recipes
   top_recipe_cards = find_recipe_cards.sort_by {|recipe| recipe.rating}[0..2]
   top_recipe_cards.map do |top_card|
     top_card.recipe
   end
 end

 def most_recent_recipe
   find_recipe_cards[-1]
 end


 def safe_recipes
   ingredients_array = allergens.map {|allergen| allergen.ingredient} #ingredients
   RecipeIngredient.all.select do |recipeingredient|
      !(ingredients_array.include?(recipeingredient.ingredient))
    end.map {|recipe_ingredient| recipe_ingredient.recipe}
 end

 def self.all
   return all
 end

end
