
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

feature "displays attack action" do
  scenario "displays attack text" do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_content ("John is attacking Kate")
  end
end

feature "attack player 2" do
  scenario "attack player 2 by clicking on button" do
    sign_in_and_play
    click_button("attack")
    click_button("ok")
    expect(page).to have_content ("Kate has 40 points")
  end
end

feature 'displays player turns' do
  scenario 'its player 1s turn' do
    sign_in_and_play
    expect(page).to have_content("It's John's turn")
  end

  scenario 'its player 2s turn' do
    sign_in_and_play
    click_button("attack")
    click_button("ok")
    expect(page).to have_content("It's Kate's turn")
  end
end
