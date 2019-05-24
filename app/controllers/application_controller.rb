class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :debug


  def debug
    Rails.logger.info("Current User is: #{current_user.inspect}")
  end


end
