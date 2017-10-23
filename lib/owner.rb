class Owner
  attr_accessor :name, :pets, :all

  @@owners = []
  @@pets = []

  def initialize(name)
    @name = name
    @@owners << name
  end

  def self.all
    @@owners << self.new
  end

  def self.reset_all
    @@owners.reset_all
    @@owners
  end

end
