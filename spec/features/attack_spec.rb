feature 'Attack move' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'player1 attacked player2'
  end

  scenario 'player 1 attacks player 2 and player 2 loses hitpoints' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "player2's hitpoints: 1500"
    expect(page).to have_content "player2's hitpoints: 1490"
  end
end
