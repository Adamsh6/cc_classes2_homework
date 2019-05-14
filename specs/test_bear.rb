require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Brown")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Pirana")
    fish_array = [@fish1, @fish2]
    @river = River.new("Amazon", fish_array)
  end

  def test_food_count
    assert_equal(0, @bear.food_count)
  end

  def test_take_fish
    @bear.take_fish(@river)
    assert_equal(1, @bear.food_count)
  end

  def test_roar
    assert_equal("Rooooar", @bear.roar)
  end

end
