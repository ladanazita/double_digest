# spec/models/user.rb
require 'rails_helper'

 describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it "does not allow duplicate name per user" do
    user = create(:user, :name => "BortSampson")
    user1= build(:user, :name => "BortSampson").should_not be_valid
  end

  it "is invalid without an email" do
    FactoryGirl.build(:user, email:nil).should_not be_valid
  end
  it "does not allow duplicate email per user"
  it "is invalid without a password"

end