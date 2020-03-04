class Player

  attr_accessor :name, :hp

  DEFAULT_HP = 50

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def name
    @name
  end

  def hp
    @hp
  end

  def reduce_hp
    @hp -= 10
  end

  def attack(player)
    player.reduce_hp
  end

end
