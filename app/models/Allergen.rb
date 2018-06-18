class Allergen
  ALL = []

  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    ALL << self
  end

  def self.all
    return ALL
  end

end
