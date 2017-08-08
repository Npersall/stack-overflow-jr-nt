class SessionsController < ApplicationController
  def login_request

  end

  def login
    # @user = User.find_by(username: params[:username])
    # if @user && User.authenticate(params[:user][:username], params[:user][:password])
    #   session[:id] = @user.id
    #   redirect "/users/#{@user.id}"
    # else
    #   redirect_to questions_path
    # end
  end

  def destroy
  end
end
