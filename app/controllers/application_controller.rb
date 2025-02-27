class ApplicationController < ActionController::Base
  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_login
    unless current_user
      redirect_to login_path, alert: "Please log in!"
    end
  end

  def require_admin
    redirect_to root_path, alert: "Admins only!" unless current_user&.admin
  end
end
