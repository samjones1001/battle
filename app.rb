require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

	enable :sessions
  	
  get '/' do
   	erb :index
  end

  post '/names' do
  	player_one = Player.new(params[:player_one_name])
  	player_two = Player.new(params[:player_two_name])
    $game = Game.new(player_one, player_two)
  	redirect to '/play'
  end

 	get '/play' do
   	@game = $game
    @confirm = session[:confirm]
  	erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    session[:confirm] = "#{@game.player_one.name} attacks #{@game.player_two.name}!"
    redirect to '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
