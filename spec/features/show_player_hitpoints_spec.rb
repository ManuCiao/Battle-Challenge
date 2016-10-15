require "./app"

feature "View player 2 hitpoints" do
  scenario "As a player 1" do
    sign_in_and_play
    expect(page).to have_text("HP: 100")
  end
end
