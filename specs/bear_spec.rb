require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < MiniTest::Test
  def setup()
    @bear = Bear.new("Yogi","Grizzly")
    @river = River.new("Amazon")
    @fish = Fish.new("Flounder")
    @fish2 = Fish.new("Sharky")
    @fish3 = Fish.new("George")
  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_roar
    assert_equal("Roar", @bear.roar)
  end

  def test_take_fish()
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3,@river.fish_amount())
    @bear.take_fish(@river, @fish)
    @bear.take_fish(@river, @fish2)
    assert_equal(2,@bear.food_count())
    assert_equal(1,@river.fish_amount())
  end
end
