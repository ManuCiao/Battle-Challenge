require "./app"

 feature "Attack player 2" do
  scenario "Reduce Player 2 Hit points by 10" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_text("#{$game.player_1.name} attacked #{$game.player_2.name} #{$game.player_2.name}: 100 points")
    expect(page).to have_text("#{$game.player_1.name} attacked #{$game.player_2.name} #{$game.player_2.name}: 90 points")
  end
end
