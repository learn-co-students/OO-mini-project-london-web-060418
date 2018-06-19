class Allergen
  attr_accessor :user, :ingredient

  @@all = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end

# class Allergen
#   attr_accessor :user, :ingredient
#
#   ALL = []
#
#   def initialize(user, ingredient)
#     @user = user
#     @ingredient = ingredient
#     ALL << self
#   end
#
#   def self.all
#     ALL
#   end
# end
