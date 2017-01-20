# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'A game over screen is displyed when one reaches 0 hit points' do

	scenario 'player two reaches 0 hitpoints' do
		sign_in_and_play
		19.times do
			click_button 'Attack!'
		end
		expect(page).to have_content 'Player 2 has lost the game'
	end

end