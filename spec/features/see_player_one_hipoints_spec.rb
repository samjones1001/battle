# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

feature 'View player 1 hitpoints' do
  
  scenario "viewing player one's hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'Player 1 has 100 hit points' 
  end

end
