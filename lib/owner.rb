class Owner
  attr_reader :species
  attr_accessor :name , :pets
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.count
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
    
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog 
  end
  
  def walk_dogs
    
    dogs = @pets[:dogs]
    
    dogs.each do |d|
      d.mood = "happy"
    end
  end
  
  
  
  def play_with_cats
    
    cats = @pets[:cats]
    
    cats.each do |c|
      c.mood = "happy"
    end
  end
  
  
   def feed_fish
    
    fish = @pets[:fishes]
    
    fish.each do |f|
      f.mood = "happy"
    end
  end
  
  
  
  
  
  def list_pets
    pets = @pets 
    counts = []
    
      pets.each do |key, array|
        counts << array.count
      end
      
    counts
    
    return "I have #{counts[0]} fish, #{counts[1]} dog(s), and #{counts[2]} cat(s)."
        
  end
  
  
  def sell_pets
    
    all = @pets
    
  all.each do |key, array|
    
    array.each do |p|
      p.mood = "nervous"
    end
    array.clear
  end
    
    
    
  end
      
    
  
  
  
  
end