require 'rails_helper'
require 'faker'

RSpec.describe UsersController, type: :controller do
  describe "POST #create" do

    before(:each){
      post :create
    }
    it "assigns a new User to @user" do
      expect(assigns(:user)).to be_a(User)
    end
  end
end
