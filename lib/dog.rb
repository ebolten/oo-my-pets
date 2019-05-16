require_relative 'cat.rb'
require_relative 'owner.rb'

class Dog

  #keeps track of all dogs
  @@all_dogs = []

  attr_reader :name
  attr_accessor :mood, :owner

  #initialize new dog
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @@all_dogs << self
  end

  def self.all
    @@all_dogs
  end

end