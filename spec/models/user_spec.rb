# spec/models/user.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    FactoryGirl.create(subject).to be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).to raise_error(ActiveRecord::RecordInvalid)
  end
  it "is invalid without an email"
  it "is invalid without a password"
  it "returns a user's full name as a string"
end