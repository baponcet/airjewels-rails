class JewelsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jewels = Jewel.all
  end

  def show
    @jewel = Jewel.find(params[:id])
  end

  def new
    @jewel = Jewel.new
  end

  def create
    @jewel = Jewel.new(jewels_params)
    @jewel.user = current_user
    if @jewel.save
      redirect_to jewel_path(@jewel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def jewels_params
    params.require(:jewel).permit(:name, :price_per_day, :brand, :category, :user_id, :comment, photos: [])
  end
end
