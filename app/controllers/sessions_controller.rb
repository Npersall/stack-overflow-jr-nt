class SessionsController < ApplicationController

  def new
    # render 'sessions/login'
    # if user = User.authenticate(params[:username], params[:password])
    #   session[:user_id] = user.id
    #   redirect_to root_url
    # end
  end

  def login_attempt
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to root_url
    end

    # if user = current_user
    #   redirect_to user_path(user)
    # else
    #   redirect_to login_path
    # end


    # @user = User.find_by(username: params[:username])
    # if @user && User.authenticate(params[:user][:username], params[:user][:password])
    #   session[:id] = @user.id
    #   redirect "/users/#{@user.id}"
    # else
    #   redirect_to questions_path
    # end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
