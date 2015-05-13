module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def load_tweets
    $twitter.home_timeline
  end
end
