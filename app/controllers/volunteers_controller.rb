class VolunteersController < ApplicationController
  before_action :set_volunteer, only: [:index, :edit, :update, :destroy]
  skip_before_action :check_user_profile_completed, only: [:new, :create]

  def index
    @projects = @volunteer.projects
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    @volunteer.user = current_user
    if @volunteer.save
      VolunteerMailer.welcome(@volunteer).deliver_now
      redirect_to volunteers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @volunteer.update(volunteer_params)
      redirect_to volunteers_path
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def set_volunteer
    @volunteer = current_user.volunteer
  end

  def volunteer_params
    params.require(:volunteer).permit(:first_name, :last_name, :description, :photo, :photo_cache)
  end
end
