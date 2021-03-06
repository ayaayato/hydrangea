class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :birthday, :coin, :icon_ids,:password, :password_confirmation, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :password, :password_confirmation, :current_password, :icon_ids])
  end

end
