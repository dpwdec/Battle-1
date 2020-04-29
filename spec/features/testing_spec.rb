

feature "Testing filling form with player's names" do
  scenario "Two names entered new page loads with 2 players names" do
    visit('/')
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Kate')
    click_button('submit')
    expect(page).to have_content ("John vs Kate")
  end
end
