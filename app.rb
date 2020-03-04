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
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

# fetches params from session, gets new page
# now fetches from objects
  get '/play' do
    $player_1_name = $player_1.name
    $player_2_name = $player_2.name
    $player_1_hp = $player_1.hp
    $player_2_hp = $player_2.hp
    erb :play
  end

  get '/attack' do
    $player_1_name = $player_1.name
    $player_2_name = $player_2.name
    Game.new.attack($player_2)
    $player_2_hp = $player_2.hp
    erb :attack
  end

  run! if app_file == $0
end
