feature 'Testing infra' do
  scenario 'Can run the battle application and view page' do
    visit('/')
    expect(page).to have_content 'yo yo'
  end
end
