class Dog

  attr_accessor :mood
  attr_reader  :name

   @@all =[]

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
    @owner.dogs << self
  end

  def self.all
    @@dogs
  end
end
