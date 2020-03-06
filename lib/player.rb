# frozen_string_literal: true

class Player
  attr_accessor :name, :hp

  DEFAULT_HP = 50

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  attr_reader :name

  attr_reader :hp

  def reduce_hp
    @hp -= 10
  end
end
