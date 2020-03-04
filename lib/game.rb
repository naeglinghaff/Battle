require 'player'

class Game

  def initialize
  end

  def attack(player)
    player.reduce_hp
  end

end
