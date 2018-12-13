require_relative 'spec_helper.rb'

describe Fish do

  let(:fish) { Fish.new("Nemo") }

  it "can initialize a fish" do
    expect(fish).to be_a(Fish)
  end

  it "initializes with a name" do
    expect(fish.name).to eq("Nemo")
  end

<<<<<<< HEAD
  it "can't change its name" do
    expect { fish.name = "Goldy" }.to raise_error NoMethodError
=======
  it "can't change its name" do 
    expect { fish.name = "Goldy" }.to raise_error
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
  end

  it "initializes with a nervous mood" do
    expect(fish.mood).to eq("nervous")
  end

<<<<<<< HEAD
  it "can change its mood" do
    fish.mood = "excited"
    expect(fish.mood).to eq("excited")
  end

end
=======
  it "can change its mood" do 
    fish.mood = "excited"
    expect(fish.mood).to eq("excited")
  end
  
end
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
