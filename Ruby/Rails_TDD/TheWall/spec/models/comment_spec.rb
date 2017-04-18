require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:comment)).to be_valid
    end
  end
end
