require_relative 'spec_helper.rb'

describe Dog do

  let(:dog) { Dog.new("Daisy") }

  it "can initialize a dog" do
    expect(dog).to be_a(Dog)
  end

  it "initializes with a name" do
    expect(dog.name).to eq("Daisy")
  end

<<<<<<< HEAD
  it "can't change its name" do
    expect { dog.name = "Fido" }.to raise_error NoMethodError
=======
  it "can't change its name" do 
    expect { dog.name = "Fido" }.to raise_error
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
  end

  it "initializes with a nervous mood" do
    expect(dog.mood).to eq("nervous")
  end

<<<<<<< HEAD
  it "can change its mood" do
    dog.mood = "hungry"
    expect(dog.mood).to eq("hungry")
  end

end
=======
  it "can change its mood" do 
    dog.mood = "hungry"
    expect(dog.mood).to eq("hungry")
  end
  
end
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
