class RecipeCard
  attr_accessor :recipe, :user, :rating, :date

  @@all = []

  def initialize(recipe, user, rating=nil, date=nil)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end

# class RecipeCard
#   attr_accessor :user, :recipe, :date, :rating
#
#   ALL = []
#
#   def initialize(user, recipe)
#     @user = user
#     @recipe = recipe
#     @date = date
#     @rating = rating
#     ALL << self
#   end
#
#   def self.all
#     ALL
#   end
# end
