module SessionsHelper

  def self.current_user
    @user ||= User.find(session[:id]) if session[:id]
  end

  def self.logged_in?
    !!current_user
  end

  def self.check_permissions
    redirect '/users/new' unless logged_in?
  end
end
