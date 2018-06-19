class User
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  #all recipes this user has recipe cards for:
  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end
  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end
  # User#add_recipe_card should accept a recipe instance as an argument,
  #  as well as a date and rating, and create a new recipe card for this
  #  user and the given recipe
  def add_recipe_card(recipe, date, rating)  #nick.add_recipe_card(3)
    RecipeCard.new(recipe, self, date, rating)
  end
  #three w the highest rating:
  def top_three_recipes
    sorted_cards = recipe_cards.sort_by {|recipe_card| recipe_card.rating}
    return sorted_cards.reverse[0..2]
  end

  def most_recent_recipe   # date format:  "2018-06-18"
    sorted_recipes = recipe_cards.sort_by {|recipe_card| recipe_card.date}
    return sorted_recipes.reverse[0]
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergen
    user_allergens.map do |allergen|
      allergen.ingredient
    end
  end

  def user_allergens
    Allergen.all.select do |user_allergen|
      user_allergen.user == self
    end
  end
end

# class User
#   attr_accessor :username
#
#   ALL = []
#
#   def initialize(username)
#     @username = username
#     ALL << self
#   end
#
#   def recipes
#     recipe_cards = RecipeCard.all.select do |recipe_card|
#      recipe_card.user == self
#     end
#     recipe_cards.map do |recipe_card|
#       recipe_card.recipe
#     end
#   end
#
#   def add_recipe_card(recipe, date, rating)
#     RecipeCard.new(self, recipe, date, rating)
#   end
#
#   def declare_allergen(ingredient)
#     Allergen.new(self, ingredient)
#   end
#
#   def allergens
#     allergens = Allergen.all.select {|allergen| allergen.user == self}
#     allergens.map {|allergen| allergen.ingredient}
#   end
#
#   def top_three_recipes
#     recipes = self.recipes.sort_by! {|recipe| recipe.rating}
#     recipes[0..2]
#   end
#
#   def most_recent_recipe
#     self.recipes.max_by {|recipe| recipe.date}
#   end
#
#   def self.all
#     ALL
#   end
# end
