class Ingredient

  ALL = []
  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    return ALL
  end

  def self.most_common_allergen
    Allergen.all.group_by do |allergen|
      allergen.ingredient
    end.max_by{|key, value| value.length}[0]
  end

end
