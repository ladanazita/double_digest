require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

	describe "POST #create" do

		let!(:yogurt1){Yogurt.create!(name: "Rob's Special Surprise", calories: 9001)}

		let!(:yogurt2){Yogurt.create!(name: "Stanley's Good Good Blend", calories: 20)}

		before(:each){
			get :index
		}

		it 'returns http success' do
			expect(response).to have_http_status(:success)
		end