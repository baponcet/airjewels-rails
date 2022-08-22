class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @jewel = Jewel.find(params[:jewel_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @jewel = Jewel.find(params[:jewel_id])
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @booking.jewel = @jewel
    @booking.save!
    redirect_to jewel_path(@jewel), notice: "Booking validated"
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
