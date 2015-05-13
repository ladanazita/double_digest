require 'rails_helper'
require 'faker'

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do

    before(:each){
      get :new
    }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "assigns a new User to @user" do
      expect(assigns(:user)).to be_a(User)
    end
    it "doesn't save any new users" do
      expect{get :new}.to change(User, :count).by(0)
    end
  end

  describe "GET show" do
    let!(:user){User.create!(name: "Jackie Chan", email: 'kickbutt@aol.com', password: 'ghandi')}

    before(:each){
      get :show, id: user.id
    }

    it 'is successful' do
      expect(response).to be_success
    end

    it 'assigns the requested user to a variable user' do
      expect(assigns(:user)).to eq(user)
    end
  end

  # describe "POST #create" do
  #   context "with valid attributes" do
  #     let!(:valid_attributes) do
  #       {name: 'Anne', email: 'lovetodoit@aol.com', password: 'tittymaps'}
  #     end
  #     it "saves the new user in the database" do
  #       expect{post :create, user: attributes_for(:user)}.to change(User, :count).by(1)
  #     end
  #     it "redirects to the home page"
  #   end
  #   context "with invalid attributes" do
  #     it "does not save the new contact into the database"
  #     it "re-renders the :new template"
  #     end
  #   end

end
