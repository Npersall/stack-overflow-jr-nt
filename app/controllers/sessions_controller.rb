class SessionsController < ApplicationController

  def new
    @user = User.new
    render 'users/new'
  end

  def create
    @user = User.create!(user_params)
    redirect_to user_path(@user)
  end

  def login_attempt
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to root_url
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
