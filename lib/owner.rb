class Owner
#can have a name, pets attribute as a hash with 3 keys
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
#is initialized with a pets attribute as a hash with 3 keys
    @pets = {:fishes => [], :dogs => [], :cats => []}
  #keeps track of the owners that have been created
    @@owners << self
  end

#can say its species
  def say_species
    "I am a #{species}."
  end

#can buy a fish that is an instance of the Fish class
  def buy_fish(name)
#knows about its fishes
    pets[:fishes] << Fish.new(name)
  end

#can buy a cat that is an instance of the Cat class   
  def buy_cat(name)
    pets[:cat] << Cat.new(name)
  end



end
