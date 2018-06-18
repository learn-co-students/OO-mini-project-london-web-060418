class User
  attr_accessor
  ALL = []

  def initialize(username)
    @username = username
    ALL << self
  end

  def self.all
    ALL
  end

  def recipes
    recipe_cards = RecipeCard.all.select {|recipe_cards| recipe_cards.user == self}
    recipe_cards.map {|recipe_card| recipe_card.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def top_three_recipes
    sorted = recipes.sort_by {|recipe| recipe.rating}
    sorted[0..2]
  end

  def most_recent_recipe
    recipes.max_by {|recipe| recipe.date}
  end

end
