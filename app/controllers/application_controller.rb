class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  helper_method :current_user
  # before_filter :load_tweets

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
      return @current_user
    else
      return nil
    end
  end
end
