require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Pirana")
    fish_array = [@fish1, @fish2]
    @river = River.new("Amazon", fish_array)
  end

  def test_fish_count
    assert_equal(2, @river.fish_count)
  end

  def test_river_random_fish
    assert_equal(Fish, @river.random_fish.class)
  end

  def test_lose_fish
    @river.lose_fish(@fish2)
    assert_equal(1, @river.fish_count)
  end
end
