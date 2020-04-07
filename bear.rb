class Bear
  attr_reader :name

  def initialize(name)
    @name = name
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
