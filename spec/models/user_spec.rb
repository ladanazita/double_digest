# spec/models/user.rb
require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(subject).to be_valid
  end
  it "is invalid without a name"
  it "is invalid without an email"
  it "is invalid without a password"
  it "returns a user's full name as a string"
end