require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test
  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Flounder")
    @fish2 = Fish.new("Sharky")
    @fish3 = Fish.new("George")
  end

  def test_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish()
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish_amount)
  end
end
