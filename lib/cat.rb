class Cat
require 'pry'

  attr_accessor :mood
  attr_reader  :name



  def initialize(name, mood)
    @name = name
    @mood = "nervous"
    @owner = owner

  end


end
