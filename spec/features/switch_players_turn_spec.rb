require "./app"

feature "Switch players" do
 scenario "Player 1 turn" do
   sign_in_and_play
   click_button 'Attack'
   click_button 'Switch'
   expect(page).not_to have_text("player_1 turn to play")
   expect(page).to have_text("player_2 turn to play")
 end
end
