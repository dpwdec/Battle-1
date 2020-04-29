require 'sinatra/base'



class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    "value = " << session[:value].inspect
    erb(:form)
  end

  post "/names" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect "/play"
  end

  get "/play" do
    session[:player1points] = 0
    session[:player2points] = 0
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  run! if app_file == $0
end



