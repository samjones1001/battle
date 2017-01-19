#As Player 1,
#So I can see how close I am to winning
#I want to see Player 2's Hit Points

feature 'View hitpoints' do
  
  scenario "viewing player two's hitpoints" do
   
    visit('/')
    fill_in :player_one_name, with: 'Player 1'
    fill_in :player_two_name, with: 'Player 2'
    click_button 'Fight!'
    expect(page).to have_content 'Player 2 has 100 hit points'
  
  end

end