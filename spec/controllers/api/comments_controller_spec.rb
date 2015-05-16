require 'rails_helper'

RSpec.describe Api::V1::CommentsController, type: :controller do

  describe "GET index" do
    it "returns a trend's comments" do
      trend = create(:trend_with_comments)
      get :index, {trend_id: trend.id}
      expect(response).to be_valid
    end
  end
  #
  # describe "POST create" do
  #         let!(:trend){create(:trend)}
  #   it "creates a new comment with valid attribute" do
  #     comment_attr = attributes_for(:comment)

  #     post :create
  #     expect(post :create, trend_id: trend.id ).to change(Comment, :count).by(1)
  #   end
  # end

end

