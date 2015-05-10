class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  # before_filter :load_tweets
end
