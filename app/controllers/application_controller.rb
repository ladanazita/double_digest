class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_filter :load_tweets

  protect_from_forgery with: :exception


end
