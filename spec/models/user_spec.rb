# spec/models/user.rb
require 'rails_helper'

 describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it "is invalid without an email"
  it "is invalid without a password"
  it "returns a user's full name as a string"
end