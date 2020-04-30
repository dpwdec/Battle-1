class Player

  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 50
  end

  def attack(enemy)
    enemy.receive_damage
  end

end
