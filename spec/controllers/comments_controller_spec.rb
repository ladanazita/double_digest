require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
	let!(:comment_with_body_text){ FactoryGirl.build(:comment_with_body_text) }
	let!(:comment_no_body_text){ FactoryGirl.build(:comment_no_body_text) }

	describe "GET #index" do

		before(:each){
			get :index
		}

		it 'returns http success' do
			expect(response).to have_http_status(:success)
		end

		it 'assigns all yogurts to yogurts' do
			expect(assigns(:comments)).to include(comment_with_body_text, comment_no_body_text)
		end

		it 'renders the index template' do
			expect(response).to render_template("index")
		end

	end
	# end of do get index block

end
