feature 'inputs names to form' do
  scenario 'can input names on form and see them appear on screen' do
    visit ('/')
    fill_in :player_1_name, with: 'Lord Looney'
    fill_in :player_2_name, with: 'Count Catula'
    click_button 'Submit'
    expect(page).to have_content 'Lord Looney vs. Count Catula'
  end

end
