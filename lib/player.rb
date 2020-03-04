class Player

  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 50
  end

  def name
    @name
  end

  def hp
    @hp
  end

end
