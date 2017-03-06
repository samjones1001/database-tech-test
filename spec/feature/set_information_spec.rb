feature 'set information' do
  scenario 'a user can visit a page to set new information' do
    visit ('/set?somekey=somevalue')
    expect(page.status_code).to eq(200)
  end

  scenario 'When new information is stored, a confirmation message is displayed' do
    visit ('/set?somekey=somevalue')
    expect(page).to have_content ('somekey => somevalue')
  end
end
