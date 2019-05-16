require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
  # code goes here

  attr_reader :name, :cats, :dogs
  attr_accessor :new_dog

  #class variable to keep track of owners
  @@all_owners = []

  def initialize(name)
    @name = name
    @@all_owners << self
    @cats = []
    @dogs = []
  end

  #return all owners
  def self.all
    @@all_owners
  end

  #all owners count
  def self.count
    @@all_owners.length
  end

  #owner count should equal zero
  def self.reset_all
    return @@all_owners.clear()
  end

  #the species of the human
  def species
    return "human"
  end

  #outputs the species
  def say_species
    return "I am a #{self.species}."
  end

  #buy a new cat
  def buy_cat(cat_name)
    self.cats << Cat.new(cat_name,self)
  end

  #buy a new dog
  def buy_dog(dog_name)
    self.dogs << Dog.new(dog_name,self)
  end

  #walk the dogs and makes mood happy
  def walk_dogs
    Dog.all.collect do |dogs|
      dogs.mood="happy"
    end
  end

  #feed the cats and make mood happy
  def feed_cats
    Cat.all.collect do |cats|
      cats.mood="happy"
    end
  end

  #sell all the pets and change moods and owner
  def sell_pets
    Cat.all.collect do |cats|
      cats.mood="nervous"
      cats.owner=nil
    end
    Dog.all.collect do |dogs|
      dogs.mood="nervous"
      dogs.owner=nil
    end
  end

  def list_pets
    dog_count = Dog.all.length
    cat_count = Cat.all.length

    return "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end