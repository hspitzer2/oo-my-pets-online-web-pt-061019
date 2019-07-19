class Owner
require 'pry'

  attr_accessor :pets,  :mood, :cats, :dogs
  attr_reader :species, :name

    @@all = []

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
      @cats =[]
      @dogs =[]
      # @pets = @cats && @dogs
      # @pets = { :dogs => [], :cats => []}
    end

     def pets
       @pets
     end

    def say_species
      "I am a #{species}."
    end

    def self.all
      @@all
    end

    def self.reset_all
      @@all.clear

    end

    def self.count
      @@all.count
    end

    def buy_cat(name)
      nu_cat = Cat.new(name, self)
      # @pets[:cats]<< nu_cat

    end

    def buy_dog(name)
      nu_dog = Dog.new(name, self)
      # @pets[:dogs] << nu_dog
    end

    def walk_dogs
      @dogs.each {|dog| dog.mood = "happy"}
    end

    def feed_cats
      @cats.each {|cat| cat.mood = "happy"}
    end

    def sell_pets
      @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      end
      @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner.clear
      end
    end

    def list_pets
      "I have #{pets[:dogs].count}, #{pets[:cats].count}."
    end

end
