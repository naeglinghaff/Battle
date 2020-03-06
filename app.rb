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
# now stores the vaiables in the object and accesses them via global variables
  post '/names' do
    $game= Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect '/play'
  end

# fetches params from session, gets new page
# now fetches from objects
  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hp
    @player_2_hp = $game.player_2.hp
    erb :play
  end

  get '/attack' do
    $game.turn
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @current_player_name = $game.current_player.name
    @current_opponent_name = $game.current_opponent.name
    @player_1_hp = $game.player_1.hp
    @player_2_hp = $game.player_2.hp
    erb :attack
  end

  run! if app_file == $0
end
