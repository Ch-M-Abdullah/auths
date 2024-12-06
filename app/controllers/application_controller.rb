class ApplicationController < ActionController::Base
  include Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  rescue_from Pundit::NotAuthorizedError do |err|
    if user_signed_in?
      redirect_to books_path, alert: "Not Authorized To Perform This Action"
    else
      redirect_to new_user_session_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :role, :username ])   # For sign up
    devise_parameter_sanitizer.permit(:account_update, keys: [ :role ]) # For account update
  end
end
