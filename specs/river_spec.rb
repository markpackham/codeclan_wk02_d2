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
    @fish4 = Fish.new("James Pond")
  end

  def test_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_amount()
    assert_equal(0, @river.fish_amount)
  end

  def test_add_fish()
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish_amount)
  end

  def test_lose_fish
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.lose_fish(@fish2)
    assert_equal(1, @river.fish_amount)
  end

  def test_show_all_fish
    @river.add_fish(@fish)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    assert_equal("Flounder,Sharky,George,James Pond", @river.show_all_fish())
  end
end
