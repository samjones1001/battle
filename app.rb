require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

	enable :sessions
  	
  get '/' do
   	erb :index
  end

  post '/names' do
  	$player_one_name = params[:player_one_name]
  	$player_two_name = params[:player_two_name]
  	redirect to '/play'
  end

 	get '/play' do
   	@player_one_name = $player_one_name
    @player_two_name = $player_two_name
    @confirm = session[:confirm]
  	erb :play
  end

  post '/attack' do
    @player_one_name = $player_one_name
    @player_two_name = $player_two_name
    session[:confirm] = "#{@player_one_name} attacks #{@player_two_name}!"
    redirect to '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
