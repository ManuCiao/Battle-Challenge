require "./app"

 feature "Attack player 2" do
#   scenario "As a player 1" do
#     sign_in_and_play
#     click_link 'Attack'
#     expect(page).to have_text("Jimmy attacked Bob")
#   end

  scenario "Reduce Player 2 Hit points by 10" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_text("Jimmy attacked Bob Bob: 100 points")
    expect(page).to have_text("Jimmy attacked Bob Bob: 90 points")
  end
end
