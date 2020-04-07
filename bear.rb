class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(river, fish)
    river.lose_fish(fish)
    @stomach << fish
  end

  def food_count
    return @stomach.length
  end

  def roar
    return "Roar"
  end
end
