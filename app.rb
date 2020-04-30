require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    "value = " << session[:value].inspect
    erb(:form)
  end

  post "/names" do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get "/play" do
    erb(:play)
  end

  post "/attack" do
    $game.attack
    $game.switch_player
    redirect "/attack"
  end

  get "/attack" do
    erb(:attack)
  end

  run! if app_file == $0
end
