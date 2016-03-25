require 'pry'
class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def walk_dogs
    pets[:dogs].collect {|val| val.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].collect {|val| val.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].collect {|val| val.mood = "happy"}
  end

  def sell_pets
    pets[:dogs].collect {|val| val.mood = "nervous"}
    pets[:fishes].collect {|val| val.mood = "nervous"}
    pets[:cats].collect {|val| val.mood = "nervous"}
    pets.clear
  end

  def list_pets
    dogs = pets[:dogs].length
    cats = pets[:cats].length
    fishes = pets[:fishes].length
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end
