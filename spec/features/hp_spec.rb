feature "HP" do
  scenario 'attack takes away hp points' do
    sign_in_and_play
    attack
    expect(page).to have_content("Lord Looney uses attack on Count Catula\nCount Catula's HP:40")
  end
end
