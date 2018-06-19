class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def recipes_count
    recipe_cards.count
  end

  def self.most_popular     #Recipe.most_popular    #pasta
    Recipe.all.max_by do |recipe|
      recipe.users.count
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |ri|
      ri.ingredient
    end
  end

  def add_ingredients(array)
    array.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end

# class Recipe
#   attr_accessor :name
#
#   ALL = []
#
#   def initialize(name)
#     @name = name
#     ALL << self
#   end
#
#   def users
#     RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
#   end
#
#   def ingredients
#     recipe_ingredients = RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
#     recipe_ingredients.map {|r_i| r_i.ingredient}
#   end
#
#   def allergens
#     all_allergens = Allergen.all.map {|allergen| allergen.ingredient}
#     self.ingredients.select {|ingredient| all_allergens.include?(ingredient)}
#   end
#
#   def add_ingredient(ingredients)
#     ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
#   end
#
#   def self.all
#     ALL
#   end
#
#   def self.most_popular
#     ALL.max_by {|recipe| recipe.users.length}
#   end
# end
