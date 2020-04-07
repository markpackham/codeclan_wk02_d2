class River
  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish(fish)
    @fish << fish
  end

  def lose_fish(fish)
    @fish.delete(fish)
  end

  def fish_amount()
    return @fish.length()
  end
end
