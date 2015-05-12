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
 		@trend = Trend.new
 	end

 	def create
 		@tweets = $twitter.home_timeline[0..200]
 			@tweets.each do |t|
 				@trend = Trend.new
 			t.hashtags.each do |h|
 				@trend.hashtags = h.text
 				@trend.save 
 			end
 		end

	end
end
end