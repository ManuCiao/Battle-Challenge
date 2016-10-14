require './app'

feature 'Finish the game' do

	scenario 'show game over if target reaches 0 hp' do
		sign_in_and_play
		18.times do
			click_button 'Attack'
      click_button 'Switch'
    end
    click_button 'Attack'
    expect(page).to have_text("player_2, You Lose!")
	end

	scenario "don't show game over page if target has more than 0 hp" do
		sign_in_and_play
		click_button 'Attack'
		expect(page).to_not have_text("player_2, You Lose!")
	end
	
end