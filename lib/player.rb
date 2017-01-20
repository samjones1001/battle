class Player

	attr_reader :name, :current_hit_points

	def initialize(name)
		@name = name
		@current_hit_points = 100
	end

	def receive_damage
		@current_hit_points -= 10
	end

	def dead?
		@current_hit_points <= 0
	end

end