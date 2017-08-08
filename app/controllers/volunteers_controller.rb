class VolunteersController < ApplicationController

  def index
    @projects = current_user.volunteer.projects
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy

  end
end

before_action :set_volunteer, only: [:show]

  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to @volunteer
    else
      render :new
    end
  end

  def show
    @review = Review.new
  end

  private

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:name, :address, :phone_number, :category)
  end
