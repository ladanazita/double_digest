class SessionsController < ApplicationController

  def create
    user=User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to('/')
    else
      flash[:error] = "Incorrect email or password"
      render 'sessions/_new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to ('/')
  end

  def fb_create
     user = User.from_omniauth(request.env['omniauth.auth'])
     session[:user_id] = user.id
     redirect_to root_url
  end

end
