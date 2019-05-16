require_relative 'dog.rb'
require_relative 'owner.rb'

class Cat
  
  @@all_cats = []

  attr_reader :name
  attr_accessor :mood, :owner

  # code goes here
  def initialize(name,owner)
    @name = name
    @mood = "nervous"
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end

end