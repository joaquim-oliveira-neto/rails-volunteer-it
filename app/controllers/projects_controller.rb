class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show, :confirm]
  skip_before_action :authenticate_user!, only: ['index', 'show']


  def new
  end

  def create
  end

  def edit
  end

  def update

  end

  def show
  end

  def index
    @projects = Project.all
  end

  def destroy
  end

  def match_volunteer_project

  end

  def confirm
    match = Match.new(params[:description])
    match.volunteer = current_user.volunteer
    match.project = @project
    match.save!

    redirect_to @project
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
