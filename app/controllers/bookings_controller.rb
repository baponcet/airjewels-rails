class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

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
    total_price(@booking)
    authorize @booking
    if @booking.save
      redirect_to jewel_path(@jewel), notice: "Congrats ! Your booking is validated"
    else
      render "jewels/show", status: :unprocessable_entity, notice: "Please put the right dates"
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def total_price(booking)
    number_of_days = booking.ending_date - booking.starting_date
    price = booking.jewel.price_per_day
    @booking.total_price = number_of_days * price
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
