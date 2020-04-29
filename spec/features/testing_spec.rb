
feature "Testing filling form with player's names" do
  scenario "Two names entered new page loads with 2 players names" do
    sign_in_and_play
    expect(page).to have_content ("John vs Kate")
  end
end

feature "view hit points" do
  scenario "see players hitpoints as 0 on load" do
    sign_in_and_play
    expect(page).to have_content ("John has 50 points")
    expect(page).to have_content ("Kate has 50 points")
  end
end

feature "attack player 2" do
  scenario "attack player 2 by clicking on button" do
    sign_in_and_play
    click_link("attack")
    expect(page).to have_content ("John is attacking")
  end
end
