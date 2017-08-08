class ProjectsController < ApplicationController
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
end
