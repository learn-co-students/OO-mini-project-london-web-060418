class Ingredient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    Allergen.all.max_by do |ingredient|
      self.user.count
    end
  end


  def self.most_common_allergen
    groupedAllergen.all.group_by do |allergen|
      allergen.user
    end
    binding.pry
  end


  def self.most_common_allergen
    grouped_allergens = Allergen.all.group_by do |allergen|
      allergen.ingredient
    end

    maxed = grouped_allergens.max_by do |ingredient, allergens|
      allergens.count
    end
    maxed[0]
  end

end


# class Ingredient
#   attr_accessor :name
#
#   ALL = []
#
#   def initialize(name)
#     @name = name
#     ALL << self
#   end
#
#   def self.all
#     ALL
#   end
#
#   def self.most_common_allergen
#     allergens = Allergen.all.map {|allergen| allergen.ingredient}
#     allergens.uniq.max_by {|allergen| allergens.count(allergen)}
#   end
# end
