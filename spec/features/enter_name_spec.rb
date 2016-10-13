require "./app"

feature "Enter name" do
  before do
    sign_in_and_play
  end

  scenario "Enter name player 1" do
    expect(page).to have_text("#{$game.player_1.name}")
  end

  scenario "Enter name player 2" do
    expect(page).to have_text("#{$game.player_2.name}")
  end

end
