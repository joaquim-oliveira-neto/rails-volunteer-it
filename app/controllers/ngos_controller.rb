class NgosController < ApplicationController

  skip_before_action :authenticate_user!
  def index
    @ngos = Ngo.all
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
