feature 'set information' do
  scenario 'a user can visit a page to set new information' do
    visit ('/set?somekey=somevalue')
    expect(page.status_code).to eq(200)
  end
end
