class JewelsController < ApplicationController
  def index
    @jewels = Jewel.all
  end

  def show
    @jewel = Jewel.find(params[:id])
  end
end
