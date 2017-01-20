# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation

feature 'Attack' do
  
  scenario "player two attacks player one" do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Attack!'
    expect(page).to have_content 'Player 2 attacks Player 1' 
  end

end