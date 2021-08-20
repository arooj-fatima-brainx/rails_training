class ApplicationController < ActionController::Base
  # layout "main"  --> To assign a specific layout for the entire application,
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, address_attributes: [:country, :state, :city, :area, :postal_code]])
    devise_parameter_sanitizer.permit(:sign_in) do |user_params| user_params.permit(:email, :password, :remember_me)

    end
  end
end
