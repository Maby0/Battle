feature 'Attack move' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'player1 attacked player2'
  end
end
