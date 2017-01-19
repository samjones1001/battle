require 'player'

describe Player do 

	subject(:player_one)  {described_class.new("Player 1")}

	describe '#name' do
		it "returns the player's name" do
			expect(player_one.name).to eq("Player 1")
		end
	end
	
end