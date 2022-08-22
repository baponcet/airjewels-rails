class JewelsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jewels = Jewel.all
  end

  def show
    @jewel = Jewel.find(params[:id])
  end

  private

  def jewels_params
    params.require(:jewel).permit(:name, :price_per_day, :photo, :brand, :category)
  end
end
