feature 'retrieve data item' do
  scenario 'a user can visit the get page' do
    visit('/get')
    expect(page.status_code).to eq(200)
  end

  context 'once a data item has been added' do
    before do
      visit('/set?somekey=somevalue')
    end

    scenario 'a user can look up a data item' do
      visit('/get?somekey')
      expect(page).to have_content('somevalue')
    end

  end
end
