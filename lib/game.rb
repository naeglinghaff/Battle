class Game

attr_reader :player_1, :player_2, :current_player, :current_opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = true
    @current_player = @player_1
    @current_opponent = @player_2
  end

  def turn
    @turn ? attack(player_2) : attack(player_1)
  end

private

  def attack(player)
    player.reduce_hp
    swap_turn
  end

  def swap_turn
    @turn = !@turn
    @turn ? @current_player = @player_1 : @current_player = @player_2
    @turn ? @current_opponent = @player_2 : @current_opponent = @player_1
  end

end
