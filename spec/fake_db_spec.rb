describe FakeDb do

  subject(:fake_db)   { described_class.new }

  it 'initializes as an empty hash' do
    expect(fake_db.storage).to be_empty
  end

end
