class Cat
require 'pry'

  attr_accessor :mood, :owner
  attr_reader  :name



  def initialize(name, mood)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self

  end


end
