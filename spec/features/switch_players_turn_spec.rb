require "./app"

feature "Switch players" do
 scenario "Player 1 turn" do
   sign_in_and_play
   click_link 'Attack'
   expect(page).not_to have_text("#{$game.player_1.name} attacked #{$game.player_2.name} #{$game.player_2.name}: 100 points #{$game.switch_player.name} turn to play")
   expect(page).to have_text("#{$game.player_1.name} attacked #{$game.player_2.name} #{$game.player_2.name}: 90 points #{$game.switch_player.name} turn to play")
 end
end
