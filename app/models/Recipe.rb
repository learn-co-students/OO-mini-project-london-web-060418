class Recipe

  ALL = []
  attr_accessor :name

  def initialize(name = "")
    @name = name
    ALL << self
  end

  def users
    RecipeCard.all.select {|recipecard| recipecard.recipe == self}.map {|card| card.user}
  end

  def ingredients
    RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}.map {|recipe| recipe.ingredient}
  end

  def allergens
    ingredients.select do |ingredient|
      Allergen.all.find{|allergy| allergy.ingredient == ingredient}
    end
  end

  def self.most_popular
    #Look for users through recipecard
    RecipeCard.all.group_by{|recipecard| recipecard.recipe }.max_by{|key, value| value.length}[0]
  end

  def self.all
    return ALL
  end
end
