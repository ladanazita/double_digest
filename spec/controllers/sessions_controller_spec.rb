require 'rubygems'
require 'rails_helper'
require 'spec_helper'

RSpec.describe SessionsController, type: :controller do

  describe "POST create" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      get :new

end