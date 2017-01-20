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
    @game = Game.create(player_one, player_two)
  	redirect to '/play'
  end

  before do
    @game = Game.instance
  end

 	get '/play' do
   	@confirm = session[:confirm]
  	erb :play
  end

  post '/attack' do
    @game.attack(@game.opponent)
    if @game.player_one.dead? || @game.player_two.dead?
      redirect to '/game_over'
    end
    session[:confirm] = "#{@game.current_player.name} attacks #{@game.opponent.name}!"
    @game.switch_turns
    redirect to '/play'
  end

  get '/game_over' do
    @game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
