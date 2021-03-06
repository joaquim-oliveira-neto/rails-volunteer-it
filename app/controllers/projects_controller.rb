class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy, :show, :match_volunteer_project, :confirm]
  skip_before_action :authenticate_user!, only: ['index', 'show']


  def new
    @project = Project.new
  end

  def create
    ngo = current_user.ngo
    @project = Project.new(projects_params)
    @project.ngo = ngo
    # ngo.projects << @project
    if @project.save
      redirect_to ngos_path
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def show
    @ngo = @project.ngo
    @projects = @ngo.projects
    @ngo_coordinates = { lat: @ngo.latitude, lng: @ngo.longitude }


    @hash = Gmaps4rails.build_markers(@ngo) do |n, marker|
    marker.lat n.latitude
    marker.lng n.longitude
    end
  end

  def index

    @projects = Project.all

    if params["skills"] == "Habilidades" && params["purpose"] == "Todas"
      @projects = Project.all
    elsif params["skills"].present? && params["purpose"] == "Todas"
      @projects = Project.where(skills: params[:skills])
    elsif params["skills"] == "Habilidades" && params["purpose"].present?
      @projects = Project.select{|p| p.ngo.purpose == params[:purpose]}
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
    @project
    @match = Match.new
  end

  def confirm
    match = Match.new(matches_params)
    match.volunteer = current_user.volunteer
    match.project = @project

    ngo = Ngo.find(@project.ngo_id)
    volunteer = Volunteer.find(Match.last.volunteer_id)

    if match.save!
      UserMailer.welcome_project(ngo, match, volunteer).deliver_now
      UserMailer.welcome_project_volunteer(ngo, match, volunteer).deliver_now
      redirect_to @project
    else
      redirect_to root_path
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def projects_params
    params.require(:project).permit(:name, :mini_description, :skills, :remote)
  end

  def matches_params
    params.require(:match).permit(:description)
  end
end
