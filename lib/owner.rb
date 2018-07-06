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
   pets[:cats] <<  cats
 end

 def buy_dogs(name)
   dog = Dog.new(name)
   pets[:dogs] << dogs
 end

     end


   end

end
