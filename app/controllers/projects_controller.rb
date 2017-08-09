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
    @ngo = Ngo.find(@project.ngo_id)
    @projects = Project.all
  end

  def index

    if params["purpose"] == "Todas"
      @projects = Project.all
    elsif params["skills"].present? && params["purpose"].present?
      @projects = Project.where(skills: params[:skills]).select{|p| p.ngo.purpose == params[:purpose]}
    elsif params["skill"].present?
      @projects = Project.where(skills: params[:skills])
    elsif params["purpose"].present?
      @projects = Project.select{|p| p.ngo.purpose == params[:purpose]}
    end

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
