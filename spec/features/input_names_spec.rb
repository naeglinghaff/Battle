feature 'inputs names to form' do
  scenario 'can input names on form and see them appear on screen' do
    sign_in_and_play
    expect(page).to have_content 'Lord Looney vs. Count Catula'
  end

end
