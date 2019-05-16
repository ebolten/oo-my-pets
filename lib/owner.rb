require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
  # code goes here

  def initialize(name)
    @name = name
  end

  @@owners = []

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    #
  end

  def species
    #has a reader, not a writer
  end

  def say_species
    #
  end

  def buy_cat(cat_name)
    Cat.new(name)
  end

  def buy_dog(dog_name)
    Dog.new(name)
  end



end