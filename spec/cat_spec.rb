require_relative 'spec_helper.rb'

describe Cat do

  let(:cat) { Cat.new("crookshanks") }

  it "can initialize a cat" do
    expect(cat).to be_a(Cat)
  end

  it "initializes with a name" do
    expect(cat.name).to eq("crookshanks")
  end

<<<<<<< HEAD
  it "can't change its name" do
    expect { cat.name = "mr. whiskers" }.to raise_error NoMethodError
=======
  it "can't change its name" do 
    expect { cat.name = "mr. whiskers" }.to raise_error
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
  end

  it "initializes with a nervous mood" do
    expect(cat.mood).to eq("nervous")
  end

<<<<<<< HEAD
  it "can change its mood" do
    cat.mood = "playful"
    expect(cat.mood).to eq("playful")
  end

end
=======
  it "can change its mood" do 
    cat.mood = "playful"
    expect(cat.mood).to eq("playful")
  end
  
end
>>>>>>> 898b7dcc55022a3d1925f70b694c7bd6b2d1884a
