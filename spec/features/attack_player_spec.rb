feature 'player attacks' do
  scenario 'player 1 attacks player 2' do
    attack
    expect(page).to have_content("Lord Looney uses attack on Count Catula")
  end
end
