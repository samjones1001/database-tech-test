feature 'retrieve information' do
  scenario 'a user can visit the get page' do
    visit('/get')
    expect(page.status_code).to eq(200)
  end
end
