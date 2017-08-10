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
    @ngo = current_user.ngos.build(ngo_params)

    if @ngo.save
      UserMailer.creation_confirmation(@ngo).deliver_now
      redirect_to ngos_path
    else
      render :new
    end

    # # redirect_to ngo_path(@ngo)

    # @volunteer = current_user.volunteers.build(volunteer_params)

    # if @volunteer.save
    #   UserMailer.creation_confirmation(@volunteer).deliver_now
    #   redirect_to volunteers_path
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def ngo_params
    params.require(:ngo).permit(:name, :responsible, :mini_description, :full_description, :phone, :address, :purpose, :website, :facebook, :email, :password)
  end
end
