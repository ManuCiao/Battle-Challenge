def sign_in_and_play
  visit ("/")

  fill_in :player_1, with: "Jimmy"
  fill_in :player_2, with: "Bob"

  click_button "Start"
end
