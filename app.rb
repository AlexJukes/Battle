require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
   erb :index
  end

  post '/player_names' do
    $game = Game.new(params[:player_1], params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    erb :play
  end

  post '/help' do
    @player_1 = $game.player_1.name
    @player_2 = $game.player_2.name
    erb :help
  end

  run! if app_file == $0
end
