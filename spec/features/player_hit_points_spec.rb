feature 'view player 2s hits' do
  scenario 'looks and views player 2s hit points' do
    visit ('/')
    fill_in :player_1_name, with: 'Lord Looney'
    fill_in :player_2_name, with: 'Count Catula'
    click_button 'Submit'
    visit('/play')
    expect(page).to have_content ("Lord Looney vs. Count Catula\nLord Looney HP: 50\nCount Catula HP: 50")
  end
end
