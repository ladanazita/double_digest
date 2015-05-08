module Api 
	class TrendsController < ApplicationController 
		protect_from_forgery with: :null_session

	def index
  	trends = Trend.all
  	render json: trends, only: [:id, :hashtags]
 	end

 	def show

 	end

 	def new
 		@trend = $twitter.home_timeline[0..200]
 	end

	end
end