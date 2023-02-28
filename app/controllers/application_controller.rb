class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,
      :last_name, :phone_number, :address_line_1, :address_line_2, :zip,
      :city, :state, :date_of_birth, :email, :password, :password_confirmation)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,
      :last_name, :phone_number, :address_line_1, :address_line_2, :zip,
      :city, :state, :date_of_birth, :email, :password, :password_confirmation,
      :current_password)}
  end
end
