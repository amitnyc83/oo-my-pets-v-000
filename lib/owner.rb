class Owner
  # code goes here



attr_accessor :name
attr_reader :species

@@all = []

def initialize(species)
  @species = species
  @@all << self
  @type_pet = {:fishes => [], :dogs => [], :cats => []}
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
   @species
 end

end
