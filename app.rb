require 'sinatra/base'
require 'player'

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
    session[:player1points] = 50
    session[:player2points] = 50
    # @player1 = session[:player1]
    # @player2 = session[:player2]
    erb(:play)
  end

  get "/attack" do
    # @player1 = session[:player1]
    # @player2 = session[:player2]
    erb(:attack)
  end

  run! if app_file == $0
end
