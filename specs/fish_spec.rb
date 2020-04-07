require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")

class FishTest < MiniTest::Test
  def setup()
    @fish = Fish.new("Flounder")
  end

  def test_get_name
    assert_equal("Flounder", @fish.name)
  end
end
