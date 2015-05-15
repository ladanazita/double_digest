require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "POST create" do
    it "creates a new comment with valid attribute" do
      expect{
        comment_attr = attributes_for(:comment)
        post :create, comment: comment_attr
      }.to change(Comment, :count).by(1)
    end
  end

end
