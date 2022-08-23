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
<<<<<<< HEAD
    @booking.save!
    redirect_to jewel_path(@jewel), notice: "Booking validated"
=======
    if @booking.save
      redirect_to jewel_path(@jewel), notice: "Congrats ! Your booking is validated"
    else
      render :new, status: :unprocessable_entity
    end
>>>>>>> 0ea2b8a7906ec309be1b9a53c1cb75f7f5e005e3
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
