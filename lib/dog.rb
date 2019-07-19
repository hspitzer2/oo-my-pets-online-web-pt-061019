class Dog

  attr_accessor :mood
  attr_reader  :name

  @@dogs =[]

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @@dogs << self
  end

  def self.all
    @@dogs
  end
end
