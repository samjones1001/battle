require 'game'

describe Game do 

	subject(:game)		{ described_class.new }
	let(:player_one)	{ double(:player) }
	let(:player_two)	{ double(:player) }

	describe '#attack' do
		it "damages the player" do
			expect(player_two).to receive(:receive_damage)
			game.attack(player_two)
		end
	end

end