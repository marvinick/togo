class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_admin
    access_denied unless user_signed_in? and current_user.admin?
  end

  def access_denied
    redirect_to root_path
  end
end
