# frozen_string_literal: true

feature 'HP' do
  scenario 'attack takes away hp points' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Count Catula's HP:40")
  end
end
