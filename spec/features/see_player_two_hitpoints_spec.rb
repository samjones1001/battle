#As Player 1,
#So I can see how close I am to winning
#I want to see Player 2's Hit Points

feature 'View hitpoints' do
  
  scenario "viewing player two's hitpoints" do
    sign_in_and_play
    expect(page).to have_content 'Player 2 has 100 hit points'  
  end

end