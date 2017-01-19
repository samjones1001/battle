# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Enter names' do
  
  scenario 'submitting names' do
   
    visit('/')
    fill_in :player_one_name, with: 'Player 1'
    fill_in :player_two_name, with: 'Player 2'
    click_button 'Fight!'
    expect(page).to have_content 'Player 1 vs. Player 2'
  
  end

end