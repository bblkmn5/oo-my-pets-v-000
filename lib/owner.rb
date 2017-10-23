class Owner
  attr_accessor :name, :pets, :all

  @@owners = []
  @@pets = {fishes:[], cats:[], dogs:[]}
  count = 0

  def initialize(name)
    @name = name
    @pets = pets
    @@owners << self.name
  end

  def self.all
    @@owners << self.new
  end

  def self.reset_all
    @@owners.reset_all
    @@owners
  end

  def count
    @@owners.each do |c|
      if c != nil
        @@owners.count += 1
      end
    end
    @@owners.count
  end

end
