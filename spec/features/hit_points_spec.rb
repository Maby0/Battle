feature 'See hit points' do
  scenario "player 1 is able to see player 2's hitpoints" do
    visit('/')
    fill_in :player_1_name, with: 'Jack'
    fill_in :player_2_name, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content "Mark's hitpoints: 1500"
  end
end
