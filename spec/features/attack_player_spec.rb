feature 'player attacks' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    expect(page).to have_content("Lord Looney vs. Count Catula")
  end

scenario 'confirmation of multiple attacks' do
  sign_in_and_play
  4.times { click_button("Attack") }
  expect(page).to have_content("Lord Looney's HP:30\nCount Catula's HP:30")
end

end
