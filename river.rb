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

  def show_all_fish()
    all_fish = ""
    for fi in @fish
        all_fish += fi.name
        all_fish += ","
    end
    # remove the final comma
    return all_fish[0..-2]
  end
end
