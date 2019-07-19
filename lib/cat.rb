class Cat
require 'pry'

  attr_accessor :mood
  attr_reader  :name



  def initialize(name, mood)
    @name = name
    @mood = "nervous"
    @@all = all
  end

  def self.all
    @@all
  end

end
