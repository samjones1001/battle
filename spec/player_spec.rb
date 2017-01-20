require 'player'

describe Player do 

	subject(:player_one)  	{described_class.new("Player 1")}
	subject(:player_two)	{described_class.new("Player 2")}

	describe '#name' do
		it "returns the player's name" do
			expect(player_one.name).to eq("Player 1")
		end
	end

	describe '#current_hit_points' do
		it "has a starting value of 100" do
			expect(player_one.current_hit_points).to eq(100)
		end 
	end

	describe '#receive_damage' do
		it "reduces the player's hit points" do
			expect{player_one.receive_damage}.to change{player_one.current_hit_points}.by(-10)
		end
	end

	describe '#dead?' do
		it 'returns true when player reaches 0 hit points' do
			10.times do
				player_one.receive_damage
			end
			expect(player_one.dead?).to eq true
		end
	end
	
end