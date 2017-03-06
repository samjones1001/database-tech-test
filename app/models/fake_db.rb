class FakeDb

  attr_reader :storage

  def initialize
    @storage = {}
  end

  def create(key, value)
    storage[key] = value
  end

  def read(key)
    return {key=>@storage[key]}
  end

end
