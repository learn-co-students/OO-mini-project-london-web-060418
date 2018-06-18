class Recipe
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def users
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def ingredients
    recipe_ingredients = RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
    recipe_ingredients.map {|r_i| r_i.ingredient}
  end

  def allergens
    all_allergens = Allergen.all.map {|allergen| allergen.ingredient}
    self.ingredients.select {|ingredient| all_allergens.include?(ingredient)}
  end

  def add_ingredient(ingredients)
    ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

  def self.all
    ALL
  end

  def self.most_popular
    ALL.max_by {|recipe| recipe.users.length}
  end
end
