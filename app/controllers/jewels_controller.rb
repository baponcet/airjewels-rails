class JewelsController < ApplicationController
  def index
    @jewels = policy_scope(Jewel)
  end

  def show
    @jewel = Jewel.find(params[:id])
    authorize @jewel
  end

  def new
    @jewel = Jewel.new
    authorize @jewel
  end

  def create
    @jewel = Jewel.new(jewels_params)
    @jewel.user = current_user
    authorize @jewel
    if @jewel.save
      redirect_to jewel_path(@jewel), notice: "Jewel added"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @jewel = Jewel.find(params[:id])
  end

  def update
    @jewel = Jewel.find(params[:id])
    @jewel.update(jewels_params)
    redirect_to jewel_path(@jewel), notice: "Jewel updated"
  end

  def destroy
    @jewel = Jewel.find(params[:id])
    @jewel.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def jewels_params
    params.require(:jewel).permit(:name, :price_per_day, :brand, :category, :user_id, :comment, photos: [])
  end
end
