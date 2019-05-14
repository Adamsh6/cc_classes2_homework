class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(river)
    fish = river.random_fish
    @stomach << fish
    river.lose_fish(fish)
  end

  def food_count
    return @stomach.size
  end

  def roar
    return "Rooooar"
  end

end
