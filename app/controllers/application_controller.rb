class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  private

  def log_in(user)
    session[:token] = user.reset_session_token
    @current_user = user
  end

  def log_out
    current_user.reset_session_token
    session[:token] = nil
  end

  def current_user
    return @current_user if @current_user
    session[:token] ||= ""
    user = User.find_by(session_token: session[:token]);
    @current_user = user if user
  end

  def logged_in?
    !current_user.nil?
  end

  def require_log_in!
    unless current_user
      flash['log_in restricted'] = "unable to perform this action while currently logged out -$STATUS: failure -$TIME: #{Time.now}"
      redirect_to new_user_session_url
    end
  end

  def prohibit_log_in!
    if current_user
      flash['log_in prohibited'] = "unable to perform this action while currently logged in -$STATUS: failure -$TIME: #{Time.now}"
      redirect_to root_url
    end
  end

  def owner?(id)
    current_user.id == id
  end

  def require_ownership!(user)
    redirect_to root_url unless owner?(user.id)
  end
end
