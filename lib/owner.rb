class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []
  @@pets = {fishes:[], cats:[], dogs:[]}
  count = 0

  def initialize(name)
    @name = name
    @pets = pets
    @@owners << self.name
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

end
