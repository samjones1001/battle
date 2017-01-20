require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

	enable :sessions
  	
  get '/' do
   	erb :index
  end

  post '/names' do
  	$player_one = Player.new(params[:player_one_name])
  	$player_two = Player.new(params[:player_two_name])
  	redirect to '/play'
  end

 	get '/play' do
   	@player_one = $player_one
    @player_two = $player_two
    @confirm = session[:confirm]
  	erb :play
  end

  post '/attack' do
    @player_one = $player_one
    @player_two = $player_two
    Game.new.attack(@player_two)
    session[:confirm] = "#{@player_one.name} attacks #{@player_two.name}!"
    redirect to '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
