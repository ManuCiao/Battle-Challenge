require "./app"

 feature "Attack player 2" do
  scenario "Reduce Player 2 Hit points by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_text("player_2: 100 points")
    expect(page).to have_text("player_2: 90 points")
  end
end
