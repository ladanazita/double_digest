require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "GET #body:string" do
    it "returns http success" do
      get :body:string
      expect(response).to have_http_status(:success)
    end
  end

end
