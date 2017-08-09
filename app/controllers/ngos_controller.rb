class NgosController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :check_user_profile_completed, only: [:new, :create]

  def index
    @projects = current_user.ngo.projects
  end

  def show
    @ngo = Ngo.find(params[:id])

    # # google maps
    # @hash = Gmaps4rails.build_markers(@ngo) do |ngo, marker|
    #   marker.lat ngo.latitude
    #   marker.lng ngo.longitude
    #   # marker.infowindow render_to_string(partial: "/ngos/map_box", locals: { ngo: ngo })
    # end
  end

  def new
    @ngo = Ngo.new
  end

  def create
    @ngo = Ngo.new(ngo_params)
    @ngo.save
    redirect_to ngo_path(@ngo)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def ngo_params
    params.require(:restaurant).permit(:name, :responsible, :mini_description, :full_description, :phone, :address, :purpose, :website, :facebook, :email, :password)
  end
end
