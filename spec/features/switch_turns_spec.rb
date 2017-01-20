# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'Turns switch each time a player attacks' do

	scenario 'the game starts with player 1\'s turn' do
		sign_in_and_play
		expect(page).to have_content 'Player 1\'s turn'
	end
	
	scenario 'after player one attacks, it is player 2\'s turn' do
		sign_in_and_play
		click_button 'Attack!'
		expect(page).not_to have_content 'Player 1\'s turn'
		expect(page).to have_content 'Player 2\'s turn'
	end
end