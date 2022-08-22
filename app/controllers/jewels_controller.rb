class JewelsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def index
    @jewels = Jewel.all
  end

  def show
    @jewel = Jewel.find(params[:id])
  end
end
