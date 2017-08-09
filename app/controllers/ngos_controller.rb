class NgosController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :check_user_profile_completed, only: [:new, :create]

  def index
    @ngos = Ngo.all
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
