module SessionsHelper
  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def default_user
    DefaultUser.new
  end

  def log_in!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
  end

  def log_out!(user)
    user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !current_user.nil?
  end

  def require_log_in
    unless logged_in?
      render :json => ["must log in to do that"], :status => :unauthorized
    end
  end
end
