
class Ingredient

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.most_common_allergen
    allergens = Allergen.all.map {|allergen| allergen.ingredient}
    allergens.uniq.max_by {|allergen| allergens.count(allergen)}
  end

end
