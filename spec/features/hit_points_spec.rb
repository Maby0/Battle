feature 'See hit points' do
  scenario "player 1 is able to see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content "player2's hitpoints: 1500"
  end

  scenario "player 1 is able to see their own hitpoints" do
    sign_in_and_play
    expect(page).to have_content "player1's hitpoints: 1500"
  end
end
