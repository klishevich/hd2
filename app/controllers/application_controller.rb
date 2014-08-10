class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:city, 
      offers_attributes: [:id, :city, :duration, :description, :image], 
      demands_attributes: [:id, :adult, :children, :duration, :description, :image]]
    # if resource_class == User
    # UserSanitizer.new(User, :user, params)
    # else 
    # super
    # end  
  end

  protect_from_forgery with: :exception

end
