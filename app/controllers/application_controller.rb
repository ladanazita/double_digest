class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  before_filter :load_tweets

	def load_tweets
   		@tweets = $twitter.home_timeline[0..50]
   	end
end
