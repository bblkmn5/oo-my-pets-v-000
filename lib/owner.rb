class Owner
  attr_accessor :name, :pets, :all

  @@owners = []
  @@pets = []
  count = 0

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

  def count
    @@owners.each do |c|
      if c
        @@owners.count += 1
      end
    end
    @@owners.count
  end

end
