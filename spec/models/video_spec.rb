# spec/models/video.rb
require 'rails_helper'

 RSpec.describe Video, type: :model do

  # let!(:fully_functional_video){ FactoryGirl.build(:fully_functional_video) }
  # let!(:no_url_video){ FactoryGirl.build(:no_url_video) }
  # let!(:no_trend_video){ FactoryGirl.build(:no_trend_video) }
  # let!(:invalid_url_video){ FactoryGirl.build(:invalid_url_video) }

  it "has a valid factory" do
    expect(FactoryGirl.create(:no_url_video)).to be_valid
  end

end