require 'rails_helper'

describe Comment do

  it "has a valid factory" do
    FactoryGirl.create(:comment).should be_valid
  end

  it "is invalid without a body" do
    FactoryGirl.build(:comment, body: nil).should_not be_valid
  end

  it "is invalid without a user association" do
    FactoryGirl.build(:comment, user:nil).should_not be_valid
  end

  it "is invalid without a trend association" do
    FactoryGirl.build(:comment, trend:nil).should_not be_valid
  end

end