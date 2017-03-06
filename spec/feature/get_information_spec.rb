feature 'retrieve data item' do

  context 'once a data item has been added' do
    before do
      visit('/set?somekey=somevalue')
    end

    scenario 'a user can visit the get page' do
      visit('/get')
      expect(page.status_code).to eq(200)
    end

    scenario 'a user can look up a data item' do
      visit('/get?somekey')
      expect(page).to have_content('somevalue')
    end

    scenario 'a user will see an error message if a data item does not exist' do
      visit('/get?nothere')
      expect(current_path).to eq('/get')
      expect(page).to have_content('that data item does not exist')
    end

    scenario 'a user will see current information for any item' do
      visit('/set?somekey=adifferentvalue')
      expect(page).not_to have_content('somevalue')
      expect(page).to have_content('adifferentvalue')
    end

  end

  context 'when no data items have been added' do

    scenario 'a user will see an error message' do
      visit('/get?therearenokeys')
      expect(page).to have_content('that data item does not exist')
    end
    
  end

end
