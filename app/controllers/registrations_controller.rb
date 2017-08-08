class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(user)
    params[:redirect_to]
  end
end
