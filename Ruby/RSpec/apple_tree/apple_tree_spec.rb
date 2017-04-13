require_relative 'apple_tree'
RSpec.describe Apple_tree do
  before(:each) do
		@tree = Apple_tree.new
	end

  it "has a getter and setter for age" do
    @tree.age = 10
    expect(@tree.age).to eq(10)
  end
  it "has a getter for the height attribute" do
    expect{@tree.height = 10}.to raise_error(NoMethodError)
  end
  it "has a getter for the apple_count attribute" do
    expect{@tree.apple_count = 10}.to raise_error(NoMethodError)
  end
  context "young tree" do
     it "can not grow apples" do
        @tree.year_gone_bye.year_gone_bye
        expect(@tree.apple_count).to eq(0)
      end
    end
    context "mature tree" do
      it "can grow apples" do
        @tree.year_gone_bye.year_gone_bye.year_gone_bye
        expect(@tree.apple_count).to eq(2)
      end
    end
    context "old tree" do
      it "can not grow apples" do
        1.upto(20){@tree.year_gone_bye }
        expect(@tree.apple_count).to eq(16)
      end
    end
  it "has 0 apples after apple picking" do
    1.upto(9){@tree.year_gone_bye }
    @tree.pick_apples
    expect(@tree.apple_count).to eq(0)
  end
end
