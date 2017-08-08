class NgosController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @ngos = Ngo.all
  end
end
