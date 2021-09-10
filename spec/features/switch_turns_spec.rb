feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "player1's turn"
    end

    scenario 'after player1 has played their turn' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "player1's turn"
      expect(page).to have_content "player2's turn"
    end
  end
end