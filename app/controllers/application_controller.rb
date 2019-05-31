class ApplicationController < ActionController::Base
  before_action :add_params, if: :devise_controller?
  protect_from_forgery with: :exception

  protected
    def add_params
      devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
    end

end
