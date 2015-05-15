require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "POST create" do
          let!(:trend){create(:trend)}
    it "creates a new comment with valid attribute" do
      comment_attr = attributes_for(:comment)

      post :create
      expect(post :create).to change(Comment, :count).by(1)
    end
  end

end
