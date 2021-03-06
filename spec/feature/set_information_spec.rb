feature 'set data item' do

  scenario 'a user can visit a page to set new data item' do
    visit ('/set?somekey=somevalue')
    expect(page.status_code).to eq(200)
  end

  scenario 'When new data item is stored, a confirmation message is displayed' do
    visit ('/set?somekey=somevalue')
    expect(page).to have_content ('somekey => somevalue')
  end

  scenario 'a data item can be overwritten' do
    visit('/set?somekey=somevalue')
    visit('/set?somekey=anothervalue')
    expect(page).to have_content ('somekey => anothervalue')
  end

end
