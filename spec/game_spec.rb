require 'game'

describe Game do 

	subject(:game)		{ described_class.new(player_one, player_two) }
	let(:player_one)	{ double(:player) }
	let(:player_two)	{ double :player, receive_damage: nil }

	describe '#player_one' do
    	it 'retrieves the first player' do
      expect(game.player_one).to eq player_one
    	end
 	end

  	describe '#player_two' do
    	it 'retrieves the second player' do
      	expect(game.player_two).to eq player_two
    	end
  	end

	describe '#attack' do
		it "damages the player" do
			expect(player_two).to receive(:receive_damage)
			game.attack(player_two)
		end
	end

	describe '#switch_turns' do
		it 'switches the current player' do
			game.switch_turns
			expect(game.current_player).to eq player_two
		end
	end

	describe '#current_player' do
		it 'starts as player 1' do
			expect(game.current_player).to eq player_one
		end

		it 'switches to player 2' do
			game.switch_turns
			expect(game.current_player).to eq player_two
		end
	end

	describe '#opponent' do
		it 'starts as player 2' do
			expect(game.opponent).to eq player_two
		end

		it 'switches to player 1 after an attack' do
			game.switch_turns
			expect(game.opponent).to eq player_one
		end
	end

end