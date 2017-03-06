describe FakeDb do

  subject(:fake_db) { described_class.new }
  let(:key)         { "somekey" }
  let(:value)       { "somevalue" }

  it 'initializes as an empty hash' do
    expect(fake_db.storage).to be_empty
  end

  context 'a data item has been created' do

    before do
      fake_db.create(key, value)
    end

    it 'stores created data items' do
      expect(fake_db.storage).to include({"somekey"=>"somevalue"})
    end

    it 'can retreive data items' do
      expect(fake_db.read(key)).to eq({"somekey"=>"somevalue"})
    end

  end

end
