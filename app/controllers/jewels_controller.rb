class JewelsController < ApplicationController
  before_action :set_jewel, only: %i[show edit update destroy]

  def index
    @jewels = policy_scope(Jewel)
    if params[:query].present?
      sql_query = "name ILIKE :query OR brand ILIKE :query OR category ILIKE :query "
      @jewels = Jewel.where(sql_query, query: "%#{params[:query]}%")
    else
      @jewels = Jewel.all
    end
  end

  def show
    @user = current_user
    @booking = Booking.new
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
    authorize @jewel
  end

  def update
    authorize @jewel
    if @jewel.update(jewels_params)
      redirect_to jewel_path(@jewel), notice: "Jewel updated"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @jewel
    @jewel.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def jewels_params
    params.require(:jewel).permit(:name, :price_per_day, :brand, :category, :user_id, :comment, photos: [])
  end

  def set_jewel
    @jewel = Jewel.find(params[:id])
  end
end
