class Owner
  #can have a name
  attr_accessor :name, :pets
  #can't change its species
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
#initializes with a species
  def initialize(species)
    @species = species
    #is initialized with a pets attrbute as a hash with 3 keys
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #keeps track of the owners that have been created
    @@owners << self
  end







end
