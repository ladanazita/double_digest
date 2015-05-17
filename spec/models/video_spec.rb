require 'rails_helper'

describe Video do
  it "has a valid factory" do
    FactoryGirl.create(:video).should be_valid
  end

  it "is invalid without a url" do
    FactoryGirl.build(:video, url: nil).should_not be_valid
  end

  it "does not allow duplicate url" do
    video = create(:video, :url => "https://www.youtube.com/watch?v=qQDuKy4ZC5Y")
    video1 = build(:video, :url => "https://www.youtube.com/watch?v=qQDuKy4ZC5Y").should_not be_valid
  end

end