require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    "value = " << session[:value].inspect
    erb(:form)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect "/play"
  end

  get "/play" do
    erb(:play)
  end

  post "/attack" do
    $player2.hitpoints -= 10
    redirect "/play"
  end

  get "/attack" do
    erb(:attack)
  end

  run! if app_file == $0
end
