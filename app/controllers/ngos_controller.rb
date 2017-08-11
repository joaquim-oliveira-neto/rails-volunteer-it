class NgosController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :check_user_profile_completed, only: [:new, :create]

  def index
    @projects = current_user.ngo.projects
  end

  def show
    @ngo = Ngo.find(params[:id])
  end

  def new
    @ngo = Ngo.new
  end

  def create
    @ngo = Ngo.new(ngo_params)
    @ngo.user = current_user

    if @ngo.save
      NgoMailer.welcome(@ngo).deliver_now
      redirect_to ngos_path
    else
      render :new
    end
  end

  def edit
    @projects = current_user.ngo.projects
    @ngo = current_user.ngo
  end

  def update
    @ngo = current_user.ngo
    @projects = current_user.ngo.projects

    if @ngo.update(ngo_params)
      redirect_to ngos_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def ngo_params
    params.require(:ngo).permit(:name, :responsible, :mini_description, :full_description, :phone, :address, :purpose, :website, :facebook, :email, :password)
  end
end
