feature 'view player 2s hits' do
  scenario 'looks and views player 2s hit points' do
    sign_in_and_play
    visit('/play')
    expect(page).to have_content ("Lord Looney vs. Count Catula\nLord Looney HP: 50\nCount Catula HP: 50")
  end
end
