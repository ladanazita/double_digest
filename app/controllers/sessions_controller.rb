class SessionsController < ApplicationController

  def create
    user=User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to('/')
    else
      redirect_to('/login')
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to ('/')
  end
  # removing twitter oauth for now
  # def twitter_sign_in
  #   auth = request.env["omniauth.auth"]
  #   user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  #   session[:user_id] = user.id
  #   redirect_to root_url, :notice => "Signed in!"
  # end
  # def twitter_sign_out
  #   session[:user_id]=nil
  #   redirect_to root_url, :notice => "Signed out!"
  # end
end
