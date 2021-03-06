class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def admin_user
    redirect_to root_url unless current_user.permission?
  end
end
