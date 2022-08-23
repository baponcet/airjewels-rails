class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jewels = policy_scope(Jewel)
    @user = current_user
    @bookings = policy_scope(Booking)
  end

  def new
    @jewel = Jewel.find(params[:jewel_id])
    @user = current_user
    @booking = Booking.new
    authorize @booking
  end

  def create
    @jewel = Jewel.find(params[:jewel_id])
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @booking.jewel = @jewel
    authorize @booking
    if @booking.save
      redirect_to jewel_path(@jewel), notice: "Congrats ! Your booking is validated"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
