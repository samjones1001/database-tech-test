class FakeDb

  attr_reader :storage

  def initialize
    @storage = {}
  end

end
