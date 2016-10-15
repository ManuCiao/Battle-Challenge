require "./app"

feature "Enter name" do
  before do
    sign_in_and_play
  end

  scenario "Enter name player 1" do
    expect(page).to have_text("player_1")
  end

  scenario "Enter name player 2" do
    expect(page).to have_text("player_2")
  end

end
