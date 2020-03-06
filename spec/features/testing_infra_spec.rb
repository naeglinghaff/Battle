feature 'Testing infra' do
  scenario 'Can run the battle application and view page' do
    visit('/')
    expect(page).to have_content 'Enter Player 1 and Player 2, please enter your names'
  end
end
