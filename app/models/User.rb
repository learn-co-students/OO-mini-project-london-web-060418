class User
  attr_accessor :username

  ALL = []

  def initialize(username)
    @username = username
    ALL << self
  end

  def recipes
    recipe_cards = RecipeCard.all.select {|recipe_card| recipe_card.user == self}
    recipe_cards.map {|recipe_card| recipe_card.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    allergens = Allergen.all.select {|allergen| allergen.user == self}
    allergens.map {|allergen| allergen.ingredient}
  end

  def top_three_recipes
    recipes = self.recipes.sort_by! {|recipe| recipe.rating}
    recipes[0..2]
  end

  def most_recent_recipe
    self.recipes.max_by {|recipe| recipe.date}
  end

  def self.all
    ALL
  end
end
