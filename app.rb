require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

# lets you store information across post and get sessions
enable :sessions

  get '/' do
    erb :index
  end

# submits the name variables from params then puts them in the session hash, then redirects to new get view
  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @player_2_hp = @game.player_2.hp
    erb(:play)
  end

  get '/attack' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @player_1_hp = @game.player_1.hp
    @player_2_hp = @game.player_2.hp
    @current_player = @game.current_player.name
    erb(:attack)
  end

  post '/attack' do
    @game.turn
    if @game.game_over == true
      redirect('/game_over')
   else
      redirect('/attack')
    end
  end

  get '/game_over' do
    'game over'
  end

  run! if app_file == $0
end
