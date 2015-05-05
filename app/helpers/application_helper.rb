module ApplicationHelper
  def current_user
    @current_user || = User.find(session[:id]) if session [:user_id]
  end
end
