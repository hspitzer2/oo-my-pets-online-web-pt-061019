class Dog

  attr_accessor :mood
  attr_reader  :name

  @@dogs =[]

  def initialize(name, mood)
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @dogs
  end
end
