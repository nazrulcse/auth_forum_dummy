class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def forem_user
    current_user
  end

  helper_method :forem_user

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:password, :password_confirmation, :email, :name) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:password, :password_confirmation, :email, :name) }
  end
end
