feature 'turns' do
  scenario 'lets players take turns' do
    sign_in_and_play
    2.times  { click_button("Attack") }
    expect(page).to have_content("Count Catula uses attack on Lord Looney")
  end
end
