class RecipeCard

  attr_accessor :user, :recipe, :date, :rating

  ALL = []

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    ALL << self
  end

  def self.all
    ALL
  end

end
