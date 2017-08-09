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
    if params["skills"].present? && params["purpose"].present?
      @projects = Project.where(skills: params[:skills]).select{|p| p.ngo.purpose == params[:purpose]}
    elsif params["skill"].present?
      @projects = Project.where(skills: params[:skills])
    elsif params["purpose"].present?
      @projects = Project.select{|p| p.ngo.purpose == params[:purpose]}
    end
  end

  def destroy
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
