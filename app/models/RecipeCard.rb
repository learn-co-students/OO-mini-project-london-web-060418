class RecipeCard

  ALL = []

  attr_accessor  :user, :recipe, :date, :rating

  def initialize(user, recipe, date = "", rating = "")
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    ALL << self
  end

  def self.all
    return ALL
  end

end
