class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :check_user_profile_completed

  def check_user_profile_completed
    return if devise_controller?
    if user_signed_in? && !current_user.volunteer && !current_user.ngo
      redirect_to select_profile_path
    end
  end
end
