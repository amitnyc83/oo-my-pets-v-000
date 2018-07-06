class Owner
  # code goes here



attr_accessor :name, :pets
attr_reader :species

@@all = []

def initialize(species)
  @species = species
  @@all << self
  @pets = {:fishes => [], :dogs => [], :cats => []}
end

def self.all
   @@all
 end

 def self.reset_all
   @@all.clear
 end

 def self.count
   @@all.size
 end

 def say_species
   "I am a #{species}."
 end

 def buy_fish(name)
   fish = Fish.new(name)
   pets[:fishes] << fish
 end

 def buy_cat(name)
   cat = Cat.new(name)
   pets[:cats] <<  cat
 end

 def buy_dog(name)
   dog = Dog.new(name)
   pets[:dogs] << dog
 end


def walk_dogs
  pets[:dogs].find { |dog|  dog.mood = "happy"}
end

def play_with_cats
  pets[:cats].find {|cat| cat.mood = "happy"}
end

def feed_fish
  pets[:fishes].find{|fish| fish.mood = "happy"}
end

def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end


end
