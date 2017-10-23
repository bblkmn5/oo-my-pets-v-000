class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
#keeps track of the owners that have been created
  @@owners = []
  def self.all
    @@owners
  end
#can reset the owners that have been created
  def self.reset_all
    @@owners.clear
  end
#can count how many owners have been created
  def self.count
    @@owners.size
  end

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end







end
