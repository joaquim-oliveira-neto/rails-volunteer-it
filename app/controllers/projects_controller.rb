class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show]
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

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
