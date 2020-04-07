require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < MiniTest::Test
  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @bear2 = Bear.new("Rupert", "Polar")
    @river = River.new("Amazon")
    @river2 = River.new("Thames")
    @fish = Fish.new("Flounder")
    @fish2 = Fish.new("Sharky")
    @fish3 = Fish.new("George")
    @fish4 = Fish.new("Codfather")
  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_get_stomach
    assert_equal([], @bear.stomach)
  end

  def test_roar
    assert_equal("Roar", @bear.roar)
  end

  def test_take_fish()
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish_amount())
    @river2.add_fish(@fish4)
    assert_equal(1, @river2.fish_amount())
    @bear.take_fish(@river, @fish)
    @bear.take_fish(@river, @fish2)
    @bear.take_fish(@river2, @fish4)
    assert_equal(3, @bear.food_count())
    assert_equal(1, @river.fish_amount())
    assert_equal(0, @river2.fish_amount())
  end
end
