class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if params[:user]
      user = User.new(user_params)
      user.save!
      redirect_to root_path
    else
      redirect_to('/signup')
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email,:password_digest)
  end

end
