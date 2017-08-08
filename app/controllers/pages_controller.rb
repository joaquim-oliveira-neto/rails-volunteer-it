class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: ['home']
  skip_before_action :check_user_profile_completed, only: [:select_profile]

  def home
  end

  def select_profile
  end
end
