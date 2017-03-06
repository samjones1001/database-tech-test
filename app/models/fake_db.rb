class FakeDb

  attr_reader :storage

  def initialize
    @storage = {}
  end

  def create(key, value)
    storage[key] = value
  end

  def read(key)
    @storage[key]
  end

end
