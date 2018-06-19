class RecipeIngredient
  attr_accessor  :recipe, :ingredient
  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end


# class RecipeIngredient
#   attr_reader :recipe, :ingredient
#
#   ALL = []
#
#   def initialize(recipe, ingredient)
#     @recipe = recipe
#     @ingredient = ingredient
#     ALL << self
#   end
#
#   def self.all
#     ALL
#   end
# end
