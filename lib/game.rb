class Game

	attr_reader :player_one, :player_two, :current_player, :opponent

	def initialize (player_one, player_two)
		@player_one = player_one
		@player_two = player_two
		@current_player = player_one
		@opponent = player_two
	end

	def self.create(player_one, player_two)
  		@game = Game.new(player_one, player_two)
	end

	def self.instance
  		@game
	end

	def attack(player)
		player.receive_damage
	end

	def switch_turns
		@current_player, @opponent = @opponent, @current_player
	end

end