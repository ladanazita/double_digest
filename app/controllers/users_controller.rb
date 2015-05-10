class UsersController < ApplicationController
  def new
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
  end
end
