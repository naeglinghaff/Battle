# frozen_string_literal: true

class Game
  attr_reader :player_1, :player_2, :current_player, :current_opponent, :game_over

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = true
    @current_player = @player_1
    @current_opponent = @player_2
    @game_over = false
  end

  # flips the turns of player 1 and player 2, unless hp is 0, delegates to end game
  def turn
    if @player_1.hp == 0 || @player_2.hp == 0
      end_game
    else
      @turn ? attack(@player_2) : attack(@player_1)
    end
  end

  # class method creates a new instance of itself
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  # class method that returns the instance of itself (class instance variable)
  def self.instance
    @game
  end

  private

  # lets a player attack another player
  def attack(player)
    player.reduce_hp
    end_game
    switch_current_player
  end

  def switch_turn
    @turn = !@turn
  end

  def switch_current_player
    @current_player = @turn ? @player_1 : @player_2
    @current_opponent = @turn ? @player_2 : @player_1
    switch_turn
  end

  def end_game
    @game_over = @game_over = true if @player_1.hp == 0 || @player_2.hp == 0
  end
end
