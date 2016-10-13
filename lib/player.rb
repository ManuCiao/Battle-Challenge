class Player

DEFAULT_POINTS = 100
HIT_POINTS = 10

attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def hit
    @hit_points -= HIT_POINTS
  end

end
