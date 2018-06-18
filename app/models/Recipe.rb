class Recipe
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.most_popular
    ALL.max_by {|recipe| recipe.users.length}
  end

  def users
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
  end

  def ingredients
    rec_ing = RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
    rec_ing.map {|ing| ing.ingredient}
  end

  def allergens
    all_allergens = Allergens.all.map {|allergen| allergen.ingredient}
    self.ingredients.select {|ingredient| all_allergens.include?(ingredient)}
  end

  def add_ingredients(ingredients)
    ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

end
