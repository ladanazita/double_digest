require 'rubygems'
require 'rails_helper'
require 'spec_helper'

RSpec.describe SessionsController, type: :controller do

  # context "with valid credentials" do
  #   let :credentials do
  #     {:session=> {:email=> 'faker@gmail.com', :password => 'password'}}
  #   end

  #   let :user do
  #     FactoryGirl.create(:user, credentials)
  #   end

  #   before :each do
  #     post '/login', credentials
  #   end

  #   it "creates a user session" do
  #     session[:user_id].should == user.id
  #   end
  # end

  describe "POST create" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

    it "creates a new user" do
      User.count.should == @count +1
      flash [:notice].should be
      response.should redirect_to(user_path(assigns(:user)))
    end
  end

  #   it "assigns a new session to a variable user" do
  #     expect(assigns(:session)).to be_a(Session)
  #   end

  # describe "DELETE destroy" do
  #   let!(:user){User.create!(name: "Bob", email:"bob@bu.edu", password: "blah")}

  #   it "should assign the user to a variable user" do
  #     delete :destroy, id: user.id
  #     expect(assigns(:user)).to eq(user)
  #   end

end