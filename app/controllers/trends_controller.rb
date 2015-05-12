class TrendsController < ApplicationController 
		protect_from_forgery with: :null_session



	@tweets = $twitter.home_timeline[0..200]
 			@tweets.each do |t|
 				@trend = Trend.new(params.permit(:hashtags))
 				t.hashtags.each do |h|
 					@trend.hashtags = h.text
 					@trend.save 

end