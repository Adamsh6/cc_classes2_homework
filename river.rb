class River

  def initialize(name, fish_array)
    @name = name
    @fishes = fish_array
  end

  def fish_count
    return @fishes.size
  end

  def lose_fish(fish)
    @fishes.delete(fish)
  end

  def random_fish
    return @fishes.sample
  end

end
