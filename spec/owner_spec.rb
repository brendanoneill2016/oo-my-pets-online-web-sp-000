require_relative 'spec_helper.rb'

describe Owner do

  let(:owner) { Owner.new("human") }
  let(:fish) { Fish.new("Nemo") }
  let(:cat) { Cat.new("Crookshanks") }
<<<<<<< HEAD
  let(:dog) { Dog.new("Fido") }
=======
  let(:dog) { Dog.new("Fido") }  
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a

  context 'Class methods' do
    it "keeps track of the owners that have been created" do
      expect(Owner.all).to include(owner)
    end

<<<<<<< HEAD
    it "can count how many owners have been created" do
      Owner.reset_all
      Owner.new("human")
      expect(Owner.count).to eq(1)
    end

=======
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
    it "can reset the owners that have been created" do
      Owner.reset_all
      expect(Owner.count).to eq(0)
    end

<<<<<<< HEAD
=======
    it "can count how many owners have been created" do
      Owner.reset_all
      Owner.new("human")
      expect(Owner.count).to eq(1)
    end 

>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
    it "can initialize an owner" do
      expect(owner).to be_a(Owner)
    end
  end

  context 'instance methods' do

<<<<<<< HEAD
    describe "#species" do
=======
    describe "#species" do  
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
      it "initializes with a species" do
        expect(owner.species).to eq("human")
      end

<<<<<<< HEAD
      it "can't change its species" do
        expect { owner.species = "hamster" }.to raise_error NoMethodError
=======
      it "can't change its species" do 
        expect { owner.species = "hamster" }.to raise_error
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
      end
    end

    describe "#say_species " do
<<<<<<< HEAD
      it "can say its species" do
        expect(owner.say_species).to eq("I am a human.")
      end
    end

    describe "#name" do
=======
      it "can say its species" do 
        expect(owner.say_species).to eq("I am a human.")
      end 
    end

    describe "#name" do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
      it "can have a name" do
        owner.name = "Katie"
        expect(owner.name).to eq("Katie")
      end
    end

<<<<<<< HEAD
    describe "#pets" do
=======
    describe "#pets" do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a

      it "is initialized with a pets attribute as a hash with 3 keys" do
        expect(owner.pets).to eq({:fishes => [], :dogs => [], :cats => []})
      end
    end

    describe "#buy_fish" do
<<<<<<< HEAD
      it 'can buy a fish that is an instance of the Fish class' do
=======
      it 'can buy a fish that is an instance of the Fish class' do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
        expect(owner.pets[:fishes].count).to eq(0)
        owner.buy_fish("Bubbles")
        owner.pets[:fishes].each do |fish|
          expect(fish).to be_a(Fish)
        end
        expect(owner.pets[:fishes].count).to eq(1)
      end

      it 'knows about its fishes' do
        owner.buy_fish("Bubbles")
        expect(owner.pets[:fishes][0].name).to eq("Bubbles")
      end
    end

<<<<<<< HEAD
    describe "#buy_cat" do
      it 'can buy a cat that is an instance of the Cat class' do
=======
    describe "#buy_cat" do 
      it 'can buy a cat that is an instance of the Cat class' do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
        expect(owner.pets[:cats].count).to eq(0)
        owner.buy_cat("Crookshanks")
        owner.pets[:cats].each do |cat|
          expect(cat).to be_a(Cat)
        end
        expect(owner.pets[:cats].count).to eq(1)
      end
<<<<<<< HEAD

      it 'knows about its cats' do
=======
      
      it 'knows about its cats' do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
        owner.buy_cat("Crookshanks")
        expect(owner.pets[:cats][0].name).to eq("Crookshanks")
      end

    end

<<<<<<< HEAD
    describe "#buy_dog" do
=======
    describe "#buy_dog" do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
      it 'can buy a dog that is an instance of the Dog class' do
        expect(owner.pets[:dogs].count).to eq(0)
        owner.buy_dog("Snuffles")
        owner.pets[:dogs].each do |dog|
          expect(dog).to be_a(Dog)
        end
        expect(owner.pets[:dogs].count).to eq(1)
      end


      it 'knows about its dogs' do
        owner.buy_dog("Snuffles")
<<<<<<< HEAD
        expect(owner.pets[:dogs][0].name).to eq("Snuffles")
      end
    end

    describe "#walk_dogs" do
=======
        expect(owner.pets[:dogs][0].name).to eq("Snuffles") 
      end
    end

    describe "#walk_dogs" do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
      it "walks the dogs which makes the dogs' moods happy" do
        dog = Dog.new("Daisy")
        owner.pets[:dogs] << dog
        owner.walk_dogs
        expect(dog.mood).to eq("happy")
<<<<<<< HEAD
      end
=======
      end 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
    end

    describe "#play_with_cats" do
      it "plays with the cats which makes the cats moods happy" do
        cat = Cat.new("Muffin")
        owner.pets[:cats] << cat
        owner.play_with_cats
        expect(cat.mood).to eq("happy")
<<<<<<< HEAD
      end
=======
      end 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
    end

    describe "#feed_fish" do
      it "feeds the fishes which makes the fishes' moods happy" do
        fish = Fish.new("Nemo")
        owner.pets[:fishes] << fish
        owner.feed_fish
        expect(fish.mood).to eq("happy")
<<<<<<< HEAD
      end
    end

    describe "#sell_pets" do
      it 'can sell all its pets, which make them nervous' do
=======
      end 
    end

    describe "#sell_pets" do 
      it 'can sell all its pets, which make them nervous' do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
        fido = Dog.new("Fido")
        tabby = Cat.new("Tabby")
        nemo = Fish.new("Nemo")
        [fido, tabby, nemo].each {|o| o.mood = "happy" }
        owner.pets = {
<<<<<<< HEAD
          :dogs => [fido, Dog.new("Daisy")],
          :fishes => [nemo],
=======
          :dogs => [fido, Dog.new("Daisy")], 
          :fishes => [nemo], 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
          :cats => [Cat.new("Mittens"), tabby]
        }
        owner.sell_pets
        owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
        [fido, tabby, nemo].each { |o| expect(o.mood).to eq("nervous") }
      end
    end

<<<<<<< HEAD
    describe "#list_pets" do
      it 'can list off its pets' do
=======
    describe "#list_pets" do 
      it 'can list off its pets' do 
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
        owner.buy_fish("Bubbles")
        owner.buy_fish("Nemo")
        owner.buy_cat("Crookshanks")
        owner.buy_dog("Fido")
        owner.buy_dog("Snuffles")
        owner.buy_dog("Charley")
        expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
      end
    end
  end
end
end
