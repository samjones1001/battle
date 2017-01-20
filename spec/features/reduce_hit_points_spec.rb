# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
feature 'reduce hit points' do
  
  scenario "player two loses hit points" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Player 2 has 90 hit points' 
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP

  scenario "player two loses hit points" do
 	sign_in_and_play
 	click_button 'Attack!'
 	click_button 'Attack!'
 	expect(page).to have_content 'Player 1 has 90 hit points'
  end

end