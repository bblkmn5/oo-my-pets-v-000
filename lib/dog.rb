class Dog
  attr_accessor :mood
  attr_reader :name
  def initialize(name, mood = nil)
    @name = name
    @mood = "nervous"
  end
end
