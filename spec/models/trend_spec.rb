require 'rails_helper'

describe Trend do

  it "has a valid factory" do
    FactoryGirl.create(:trend).should be_valid
  end

  it "is invalid without a hashtag" do
    FactoryGirl.build(:trend, hashtags: nil).should_not be_valid
  end

  it "does not allow duplicate hashtags to be saved" do
    trend = create(:trend, :hashtags => "Obama")
    trend2 = build(:trend, :hashtags => "Obama").should_not be_valid
  end

end