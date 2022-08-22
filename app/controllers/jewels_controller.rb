class JewelsController < ApplicationController
  def index
    @jewel = Jewel.all
  end

  def show
    @jewel = Jewel.find(params[:id])
  end
end
