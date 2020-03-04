require 'sinatra/base'

class Battle < Sinatra::Base

# lets you store information across post and get sessions
enable :sessions

  get '/' do
    erb :index
  end

# submits the name variables from params then puts them in the session hash, then redirects to new get view
  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    session[:player_1_name] = @player_1_name
    session[:player_2_name] = @player_2_name
    redirect '/play'
  end

# fetches params from session, gets new page
  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_1_hit = 50
    @player_2_hit = 50
    erb :play
  end

  run! if app_file == $0
end