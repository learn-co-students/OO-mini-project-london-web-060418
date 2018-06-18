class RecipeIngredient
  ALL = []
  attr_accessor :ingredient, :recipe

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    ALL << self
  end

  def self.all
    ALL
  end

end
