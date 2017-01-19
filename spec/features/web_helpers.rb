def sign_in_and_play
	visit('/')
    fill_in :player_one_name, with: 'Player 1'
    fill_in :player_two_name, with: 'Player 2'
    click_button 'Fight!'
end