class ApplicationController < ActionController::Base
=begin
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :description, :image, socials_attributes: [:id, :name, :link]])
  end
=end
end
