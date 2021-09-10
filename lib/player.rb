class Player
  DEFAULT_HIT_POINTS = 1500
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HIT_POINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hitpoints -= 10
  end
end
